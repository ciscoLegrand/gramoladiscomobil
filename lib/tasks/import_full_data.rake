require 'csv'
require 'concurrent'

namespace :import do
  desc 'Import albums and attachments from CSV'

  task full_albums: :environment do
    start_time = Time.now
    ram_usage = "💾 #{`ps -o rss= -p #{Process.pid}`.chomp.to_i / 1024} MB"
    cpu_usage = "💻 #{`ps -p #{Process.pid} -o %cpu`.split.last}" 
    load_avg  = "🔄 #{`uptime`.split("load average:").last.strip}"
    thread_count = "🚸 #{`ps -T -p #{Process.pid} | wc -l`.chomp}"
    thread_name = "📌 #{Thread.current.name}"

    base_path = Rails.root.join('lib', 'tasks', 'import_active_storage', 'csv_import')
    file_path = base_path.join('import_albums_galleries_and_images.csv')

    # Contadores e información inicial
    total_rows = 0
    successful_albums = 0
    failed_albums = 0
    errors = []

    begin
      unless File.exist?(file_path)
        puts "❌ El archivo #{file_path} no existe."
        exit
      end

      puts "🚀 Iniciando importación de álbumes desde #{file_path}"

      # Organizar datos por álbum
      puts "📑 Organizando datos por álbum..."
      organized_data = {}

      CSV.foreach(file_path, headers: true) do |row|
        album_id = row['album_id']

        organized_data[album_id] ||= {
          title: row['album_title'],
          date_event: Date.parse(row['album_date_event']),
          password: row['album_password'],
          images: []
        }

        attachment_data = JSON.parse(row['attachment_blob'])
        blob_data = attachment_data['attachment']['blob']
        organized_data[album_id][:images] << blob_data
        total_rows += 1
      end

      puts "✅ Datos organizados para #{organized_data.keys.count} álbumes."

      # Crear un pool de hilos
      pool = Concurrent::FixedThreadPool.new(4)

      # Iterar por cada álbum
      organized_data.each do |_, album_data|
        pool.post do
          with_retries(max_retries: 5, delay: 5) do
            thread_start_time = Time.now
            blobs_array = []

            puts "📁 #{album_data[:images].size} Blobs se adjuntarán para álbum: #{album_data[:title]}"
            begin
              # Creación del álbum
              album = Album.new(
                title: album_data[:title],
                date_event: album_data[:date_event],
                password: album_data[:password],
                published_at: album_data[:date_event],
                emails: ['cisco.glez@gmail.com']
              )
              album_title = album[:title].ljust(30)

              # Creación de los blobs
              album_data[:images].each do |blob_data|
                blob = ActiveStorage::Blob.new(
                  key: blob_data['key'],
                  filename: blob_data['filename'],
                  content_type: blob_data['content_type'],
                  byte_size: blob_data['byte_size'].to_i,
                  checksum: blob_data['checksum'],
                  metadata: blob_data['metadata']
                )
                blobs_array << blob
              end

              # Attach blobs
              puts "📎 Adjuntando #{blobs_array.size} blobs al álbum #{album.title} está en proceso..."
              blobs_array.each_with_index do |blob, idx|
                begin
                  album.images.attach(blob)
                rescue => e
                  errors << {
                              error: e.message,
                              album_title: album.title,
                              blob: { key: blob.key, filename: blob.filename }
                            }
                  puts "❌ Error adjuntando blob #{blob.filename} al álbum #{album.title}: #{e.message}"
                end
                puts "[#{idx + 1}] Album: #{album_title} \tRAM: #{ram_usage} \t| CPU: #{cpu_usage} \t| LOAD: #{load_avg}"
              end

              # Guardar álbum
              album.save!
              album.publish! if album.published_at.past? && album.images.attached?
              successful_albums += 1
              puts "✅ Álbum #{album.title} importado con éxito."
              thread_end_time = Time.now
              puts "⏳ Tiempo de proceso del álbum #{album_data[:title]}: #{thread_end_time - thread_start_time} segundos"
              puts "THREAD: #{thread_name} for Album: #{album_title} \tRAM: #{ram_usage} \t| CPU: #{cpu_usage} \t| LOAD: #{load_avg}"

            rescue => e
              failed_albums += 1
              errors << {
                error_message: e.message,
                backtrace: e.backtrace,
                album_title: album_data[:title]
              }
              puts "❌ Error procesando álbum #{album_data[:title]}: #{e.message}"
            end
          end
        end
      end

      pool.shutdown
      pool.wait_for_termination
      
    rescue => general_error
      # En caso de que un error no capturado previamente suceda, aquí se agregará
      # a la lista de errores.
      errors << {
        error_message: general_error.message,
        backtrace: general_error.backtrace
      }
      puts "❌ Ha ocurrido un error no anticipado: #{general_error.message}"
      
    ensure
      end_time = Time.now
      total_duration = end_time - start_time

      # Recopilando información general
      general_info = {
        process_name: "Importación de ActiveStorage desde CSV",
        start_time: start_time.strftime('%Y-%m-%d %H:%M:%S'),
        end_time: end_time.strftime('%Y-%m-%d %H:%M:%S'),
        environment: Rails.env,
        ruby_version: RUBY_VERSION,
        rails_version: Rails::VERSION::STRING,
        user: "System (rake task): import:full_albums",
        total_rows: total_rows,
        successful_albums: successful_albums,
        failed_albums: failed_albums,
        errors: errors,
        total_duration: total_duration,
        monitor_system:{ 
          ram: ram_usage,
          cpu_usage: cpu_usage, 
          laoad_avg: load_avg,
        },
      }

      # Enviando email resumen al finalizar, independientemente de si hubo errores o no
      ErrorMailer.import_summary(general_info).deliver_now
      puts "📧 Resumen enviado."
    end
  end

  def with_retries(max_retries:, delay:)
    tries = 0
    begin
      yield
    rescue ActiveRecord::ConnectionTimeoutError => e
      if tries < max_retries
        tries += 1
        sleep(delay)
        retry
      else
        raise e
      end
    end
  end
end
