# lib/tasks/process_csv.rake

require 'csv'

namespace :import do
  desc "Process CSV to generate array of albums"
  task full_albums: :environment do
    base_path = Rails.root.join('lib', 'tasks', 'import_active_storage', 'csv_import')
    csv_path = base_path.join('import_albums_galleries_and_images.csv')

    if File.exist?(csv_path)
      puts "📁 Processing CSV #{csv_path}"
    else
      puts "❌ CSV file not found #{csv_path}"
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
      puts "[#{aux}] {#{albums[album_id][:blobs].size}/#{albums[album_id][:total_images]}}🚧 Album #{album_id} has #{albums[album_id][:gallery_ids].length} galleries and a total of #{albums[album_id][:total_images]}"
    end

    albums.each do |_id, album_data|
      total_images = album_data[:blobs].length

      if total_images != album_data[:total_images]
        puts "❌ Mismatch in image counts #{total_images} for album #{album_data[:album_id]}"
      end
      job = AlbumImportJob.set(wait: 5.minutes)
                          .perform_later(album_data)
      puts "🚧 JOB: #{job.job_id} : Creating album #{album_data[:album_id]} - #{album_data[:album_title]} with #{album_data[:total_images]} data images & #{total_images} real blobs."
      # Sleep con visualización de progreso
      10.times do
        print "."
        sleep 1
      end
      puts
    end
  end
end
