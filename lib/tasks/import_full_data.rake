require 'csv'

namespace :import do
  desc 'Import albums and attachments from CSV'

  task full_albums: :environment do
    base_path = Rails.root.join('lib', 'tasks', 'import_active_storage', 'csv_import')
    file_path = base_path.join('import_albums_galleries_and_images.csv')

    # Contadores
    total_rows = 0
    successful_albums = 0
    failed_albums = 0
    errors = []

    # Verificar si el archivo existe
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

    # Iterar por cada álbum
    album_counter = 0
    organized_data.each do |_, album_data|
      blobs_array = []

      begin
        # Creación del álbum
        album = Album.new(
          title: album_data[:title],
          date_event: album_data[:date_event],
          password: album_data[:password],
          published_at: album_data[:date_event],
          emails: ['cisco.glez@gmail.com']
        )
        album_counter += 1
        # Creación de los blobs
        album_data[:images].each_with_index do |blob_data, idx|
          blob = ActiveStorage::Blob.new(
            key: blob_data['key'],
            filename: blob_data['filename'],
            content_type: blob_data['content_type'],
            byte_size: blob_data['byte_size'].to_i,
            checksum: blob_data['checksum'],
            metadata: blob_data['metadata']
          )
          blobs_array << blob
          puts "📁 Blob #{idx + 1} creado en album numero #{album_counter}"
        end

        # Attach blobs
        puts "📎 Adjuntando #{blobs_array.size} blobs al álbum #{album.title}..."
        album.images.attach(blobs_array)

        # Guardar álbum
        album.save!
        album.publish! if album.published_at.past? && album.images.attached?
        successful_albums += 1
        puts "✅ Álbum #{album.title} importado con éxito."
      rescue => e
        failed_albums += 1
        errors << {
          error_message: e.message,
          backtrace: e.backtrace,
          album_title: album_data[:title]
        }
      end
    end

    # Recopilando información general
    general_info = {
      process_name: "Importación de ActiveStorage desde CSV",
      end_time: Time.now.strftime('%Y-%m-%d %H:%M:%S'),
      environment: Rails.env,
      ruby_version: RUBY_VERSION,
      rails_version: Rails::VERSION::STRING,
      user: "System (rake task): import:full_albums",
      host_info: `hostname`.strip,
      total_rows: total_rows,
      successful_albums: successful_albums,
      failed_albums: failed_albums,
      errors: errors
    }
  
    # Enviar correo electrónico con la información general
    ErrorMailer.import_summary(general_info).deliver_now
        
    # Resumen final
    puts "🏁 Proceso finalizado."
    puts "📊 Total de filas: #{total_rows}"
    puts "✅ Álbumes importados con éxito: #{successful_albums}"
    puts "❌ Álbumes con errores: #{failed_albums}"
  end
end
