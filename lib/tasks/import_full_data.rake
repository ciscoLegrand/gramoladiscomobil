require 'csv'
require_relative '../logging'

namespace :import do
  desc "Process CSV to generate array of albums"
  task full_albums: :environment do
    Rails.logger = Logger.new(STDOUT)

    include Logging
    
    log_with_metadata("ImportTask", "info", "Cleaning sidekiq jobs", {environment: Rails.env})

    # Limpiar los trabajos de AlbumImportJob
    queue = Sidekiq::Queue.new("high_priority_queue")
    queue.clear
    Sidekiq::ScheduledSet.new.clear
    log_with_metadata("ClearJobs", "debug", "Clearing sidekig enqueued and scheduled jobs", {})

    base_path = Rails.root.join('lib', 'tasks', 'import_active_storage', 'csv_import')
    csv_path = base_path.join('import_albums_galleries_and_images.csv')

    if File.exist?(csv_path)
      log_with_metadata("CSVStatus", "info", "Processing CSV", path: csv_path.to_s)
    else
      log_with_metadata("CSVStatus", "error", "CSV file not found", path: csv_path.to_s)
    end

    if Album.count.positive?
      log_with_metadata("DatabaseStatus", "info", "Existing albums and blobs counts", {albums: Album.count, blobs: ActiveStorage::Blob.count})
      log_with_metadata("DatabaseAction", "warn", "Deleting all albums and attachment files")
      Album.delete_all
      ActiveStorage::Attachment.delete_all
      ActiveStorage::Blob.delete_all
    else
      log_with_metadata("DatabaseStatus", "info", "No albums encountered")
    end

    albums = {}
    aux = 0

    CSV.foreach(csv_path, headers: true) do |row|
      album_id = row['album_id'].to_i
      gallery_id_data = JSON.parse(row['gallery_id'])
      attachment_data = JSON.parse(row['attachment_blob'])

      albums[album_id] ||= {
        album_id: album_id,
        album_title: row['album_title'],
        album_password: row['album_password'],
        album_date_event: row['album_date_event'],
        total_images: row['total_images'].to_i,
        gallery_ids: [],
        blobs: [],
        attachments: []
      }

      albums[album_id][:gallery_ids] << gallery_id_data['gallery_id']
      albums[album_id][:blobs] << attachment_data.dig("attachment", "blob")
      
      attachment = attachment_data["attachment"]
      attachment["record_id"] = album_id
      albums[album_id][:attachments] << attachment
      albums[album_id][:gallery_ids].uniq!

      aux += 1
      log_with_metadata("AlbumProcessing", "info", "Processing",
                        {album_id: album_id, gallery_count: albums[album_id][:gallery_ids].length,
                        total_images: "#{aux}"})
    end

    max_payload_size = 0.90 * 1_048_576

    albums.each do |_id, album_data|
      total_images = album_data[:blobs].length

      if total_images != album_data[:total_images]
        log_with_metadata("ImageDataMismatch", "error", "Mismatch in image counts", {total_images: total_images, album_id: album_data[:album_id]})
        next
      end

      serialized_album = Sidekiq.dump_json(album_data)
      job = nil

      log_with_metadata("AlbumBlob", "info", "Album blobs and size", {album_id: album_data[:album_id], blob_count: album_data[:blobs].length, size: (serialized_album.bytesize.to_f / 1_048_576).round(2)})

      if serialized_album.bytesize > max_payload_size
        count = 0

        blobs = album_data[:blobs]
        album_data = album_data.except!(:blobs)

        blobs.each_slice(25) do |blob_slice|
          reduced_album_data = album_data.merge(blobs: blob_slice)
          serialized_blob_slice = Sidekiq.dump_json(reduced_album_data)
        
          # Verificar si el tamaño de blob_slice es mayor que max_payload_size
          if serialized_blob_slice.bytesize > max_payload_size
            album_data = album_data.except!(:blobs)
            blob_slice.each_slice(5) do |inner_blob_slice|
              reduced_inner_album_data = album_data.merge(blobs: inner_blob_slice)
              inner_serialized = Sidekiq.dump_json(reduced_inner_album_data)
              if inner_serialized.bytesize > max_payload_size
                log_with_metadata("InnerBlob", "error","Inner slice size is greater than max_payload_size", {album_id: album_data[:album_id], inner_slice_size: inner_serialized.bytesize, max_payload_size: max_payload_size})

                next
              end

              serialized_inner_blob_slice = Sidekiq.dump_json(reduced_inner_album_data)
        
              debug_log("Size of the enqueued data for AlbumImportJob with inner slice: #{(serialized_inner_blob_slice.bytesize.to_f / 1_048_576).round(2)} MB")
              warn_log("#{reduced_inner_album_data[:blobs].size * count}/#{total_images} images enqueued for album #{reduced_inner_album_data[:album_id]} with inner slice")
              job = AlbumImportJob.set(wait: 25.seconds).perform_later(reduced_inner_album_data)
              count += 1
              sleep_progress(30)
            end
          else
            debug_log("Size of the enqueued data for AlbumImportJob: #{(serialized_blob_slice.bytesize.to_f / 1_048_576).round(2)} MB")
            warn_log("#{reduced_album_data[:blobs].size * count}/#{total_images} images enqueued for album #{reduced_album_data[:album_id]}")
            job = AlbumImportJob.set(wait: 70.seconds).perform_later(reduced_album_data)
            count += 1
            sleep_progress(60)
          end
        end
        
      else
        job = AlbumImportJob.set(wait: 70.seconds).perform_later(album_data)
        sleep_progress(60)
        log_with_metadata("JobEnqueue", "info", "Enqueuing the whole job")
      end
      log_with_metadata("JobCreation", "info", "Job creation for album", {job_id: job.job_id, album_id: album_data[:album_id], album_title: album_data[:album_title], data_images: album_data[:total_images], real_blobs: total_images})
    end
  end
end

def sleep_progress(seconds)
  seconds = seconds.is_a?(Integer) ? seconds : 90
  seconds.times do
    print '.'
    sleep 1
  end
end