require 'csv'

namespace :import do
  desc 'Import active_storage_blobs and attachments data from CSV'
  task active_storage_images: :environment do

    host = Thread.current[:host]
    error_row = {}
    skipped_blobs = []
    # Define absolute paths for CSVs
    base_path = Rails.root.join('lib', 'tasks', 'import_active_storage', 'csv_import')
    active_storage_blobs_path = base_path.join('active_storage_blobs.csv')
    active_storage_attachments_path = base_path.join('active_storage_attachments.csv')
    album_mapping_filename = 'album_mappings.csv'

    # Distinguishing environment to locate the album mapping file
    if Rails.env.production? || Rails.env.staging?
      # Assuming you have a Report model to store the CSV file
      report = Report.last
      if report&.file.attached?
        # Downloads the CSV file to a temp path
        temp_path = Rails.root.join('tmp', album_mapping_filename)
        File.open(temp_path, 'wb') do |file|
          file.write(report.file.download)
        end
        album_mapping_path = temp_path
      else
        raise "CSV file is not attached to the Report!"
      end
    else
      album_mapping_path = base_path.join(album_mapping_filename)
    end

    begin
      puts "Starting the import process..."

      # Load album mappings (old_id to new_uuid and title)
      puts "Loading old_id to new_uuid mappings..."
      mapping = {}
      CSV.foreach(album_mapping_path, headers: true) do |row|
        mapping[row["old_id"]] = { uuid: row["new_uuid"], title: row["title"] }
      end
      puts "Mapping loaded successfully."

      # Create a hash to store blobs by their ID
      blobs_data = {}
      CSV.foreach(active_storage_blobs_path, headers: true, header_converters: :symbol) do |blob_row|
        blobs_data[blob_row[:id]] = blob_row.to_h
      end

      aux_attach = 0
      aux_blob = 0

      puts "Reading active_storage_attachments CSV and processing records..."
      CSV.foreach(active_storage_attachments_path, headers: true) do |row|
        error_row = row.to_h
        puts "Processing attachment for record type: #{row["record_type"]}"
        unless ['Gallery', 'Album'].include?(row["record_type"])
          skipped_blobs << row.to_h
          puts "🚫 sikiped blobs counter: #{skipped_blobs.size}"
          next
        end

        album_title = mapping.dig(row["record_id"], :title)
        puts "📀 Attachment for Album (#{album_title}) found: #{row['name']}"

        mapped_id = mapping.dig(row["record_id"], :uuid)
        next unless mapped_id

        # Get the blob data from the hash
        blob_data = blobs_data[row["blob_id"]]
        next unless blob_data

        # Skip if the blob already exists in the database
        if ActiveStorage::Blob.where(key: blob_data.dig(:key)).exists?
          puts "file already exists: #{ActiveStorage::Blob.where(key: blob_data.dig(:key)).exists?}"
          next
        end

        # Create the blob
        metadata = blob_data[:metadata] == 'NULL' ? '' : JSON.parse(blob_data[:metadata])
        blob = ActiveStorage::Blob.create!(
          key: blob_data.dig(:key),
          filename: blob_data.dig(:filename),
          content_type: blob_data.dig(:content_type),
          metadata: metadata,
          service_name: blob_data.dig(:service_name),
          byte_size: blob_data.dig(:byte_size).to_i,
          checksum: blob_data.dig(:checksum),
          created_at: blob_data.dig(:created_at)
        )
        puts "🦥 #{aux_blob += 1} Active storage blob for Album (#{album_title}) imported: #{blob_data.dig(:filename)}"

        # Create the attachment
        attach = ActiveStorage::Attachment.create!(
          name: row["name"],
          record_type: 'Album',
          record_id: mapped_id,
          blob_id: blob.id,
          created_at: row["created_at"]
        )
        puts "🙂 #{aux_attach += 1} Creating attachment for Album (#{album_title}): #{attach.name} with blob #{blob.id == attach.blob_id}..."
      end
      
      # Update albums after all the attachments are imported
      mapping.each do |old_id, value|
        album = Album.find_by(id: value[:uuid])
        # if published_at is a past date, update status to publish
        if album&.published_at&.past?
          album&.publish!
          puts "📅 Album (#{album.title}) published at: #{album.published_at}"
        end
      end
    rescue => e
      puts "🚨 Error during the import process: #{e.message}"
      puts e.backtrace
      # Recopilando información adicional
      error_info = {
        process_name: "Importación de ActiveStorage desde CSV",
        end_time: Time.now.strftime('%Y-%m-%d %H:%M:%S'),
        environment: Rails.env,
        ruby_version: RUBY_VERSION,
        rails_version: Rails::VERSION::STRING,
        user: "System (rake task: import:active_storage_images))",
        host_info: host,
        error_row: error_row
      }

      # Enviar correo electrónico
      ErrorMailer.import_error(e, e.backtrace, error_info).deliver_later
    ensure
      # Recopilando información general
      general_info = {
        process_name: "Importación de ActiveStorage desde CSV",
        end_time: Time.now.strftime('%Y-%m-%d %H:%M:%S'),
        environment: Rails.env,
        ruby_version: RUBY_VERSION,
        rails_version: Rails::VERSION::STRING,
        user: "System (rake task) import:active_storage_images",
        host_info: host,
        skipped_blobs: skipped_blobs
      }

      # Enviar correo electrónico
      ProcessMailer.import_error(nil,nil, general_info).deliver_later
    end

    puts "Import process finished."
  end
end
