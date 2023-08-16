require 'csv'
require 'concurrent'
require 'smarter_csv'

namespace :import do
  desc 'Import albums and attachments from CSV'

  task full_albums: :environment do
    start_time = Time.now
    ram_usage = "💾 #{`ps -o rss= -p #{Process.pid}`.chomp.to_i / 1024} MB"
    cpu_usage = "💻 #{`ps -p #{Process.pid} -o %cpu`.split.last}" 
    load_avg  = "🔄 #{`uptime`.split("load average:").last.strip}"
    thread_count = "🚸 #{`ps -T -p #{Process.pid} | wc -l`.chomp}"
    base_path = Rails.root.join('lib', 'tasks', 'import_active_storage', 'csv_import')
    file_path = base_path.join('import_albums_galleries_and_images.csv')

    successful_albums = Concurrent::AtomicFixnum.new
    failed_albums = Concurrent::AtomicFixnum.new
    errors = Concurrent::Array.new
    chunk_size = 100

    unless File.exist?(file_path)
      puts "❌ El archivo #{file_path} no existe."
      exit
    end

    puts "🚀 Iniciando importación de álbumes desde #{file_path}"

    pool = Concurrent::FixedThreadPool.new(2)

    SmarterCSV.process(file_path, chunk_size: chunk_size, headers: true) do |chunk|
      puts "🔍 Procesando chunk y 🔄 Organizando datos... #{chunk.length} registros en este chunk.\nEl primero es #{chunk.first(1)}"

      organized_data = organize_data(chunk)

      organized_data.each do |_, album_data|
        pool.post do
          process_album(album_data, successful_albums, failed_albums, errors)
        end
      end
    end

    puts "🛑 Finalizando pool de hilos..."
    pool.shutdown
    pool.wait_for_termination

    send_summary(successful_albums.value, failed_albums.value, errors, start_time)
  end

  def organize_data(chunk)
    organized_data = {}
    chunk.each do |row|
      next if row['attachment_blob'].nil?

      album_id = row['album_id']
      organized_data[album_id] ||= {
        title: row['album_title'],
        date_event: row['album_date_event'].present? ? Date.parse(row['album_date_event']) : nil,
        password: row['album_password'],
        images: []
      }
      attachment_data = JSON.parse(row['attachment_blob'])
      blob_data = attachment_data['attachment']['blob']
      organized_data[album_id][:images] << blob_data
    end
    organized_data
  end

  def process_album(album_data, successful_albums, failed_albums, errors)
    puts "🔄 Procesando álbum: #{album_data[:title]}..."
    blobs_array = []

    album = Album.new(
      title: album_data[:title],
      date_event: album_data[:date_event],
      password: album_data[:password],
      published_at: album_data[:date_event],
      emails: ['cisco.glez@gmail.com']
    )

    blobs_array = album_data[:images].map do |blob_data|
      ActiveStorage::Blob.new(
        key: blob_data['key'],
        filename: blob_data['filename'],
        content_type: blob_data['content_type'],
        byte_size: blob_data['byte_size'].to_i,
        checksum: blob_data['checksum'],
        metadata: JSON.parse(blob_data['metadata'])
      )
    end

    Album.transaction do
      if album.save
        album.images.attach(blobs_array)
        album.publish! if album.published_at.past? && album.images.attached?
        successful_albums.increment
        puts "✅ Álbum #{album_data[:title]} importado con éxito."
      else
        failed_albums.increment
        error_message = "No se pudo guardar el álbum #{album_data[:title]}. Errores: #{album.errors.full_messages.join(', ')}"
        errors << { error_message: error_message, album_title: album_data[:title] }
        puts "❌ #{error_message}"
      end
    rescue => e
      failed_albums.increment
      errors << {
        error_message: e.message,
        backtrace: e.backtrace,
        album_title: album_data[:title]
      }
      puts "❌ Error al importar álbum #{album_data[:title]}. Motivo: #{e.message}"
    end

    GC.start
  end

  def send_summary(successful_albums, failed_albums, errors, start_time)
    end_time = Time.now
    total_duration = end_time - start_time

    general_info = {
      process_name: "Importación de ActiveStorage desde CSV",
      start_time: start_time.strftime('%Y-%m-%d %H:%M:%S'),
      end_time: end_time.strftime('%Y-%m-%d %H:%M:%S'),
      environment: Rails.env,
      ruby_version: RUBY_VERSION,
      rails_version: Rails::VERSION::STRING,
      user: "System (rake task): import:full_albums",
      successful_albums: successful_albums,
      failed_albums: failed_albums,
      errors: errors,
      total_duration: total_duration
    }

    ErrorMailer.import_summary(general_info).deliver_now
    puts "📧 Resumen enviado."
  end
end
