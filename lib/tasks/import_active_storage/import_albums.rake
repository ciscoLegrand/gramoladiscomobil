# lib/tasks/import_albums.rake
require 'csv'

namespace :import do
  desc "Import albums from CSV and export mapping of old ID to new UUID"
  task albums: :environment do
    base_path = Rails.root.join('lib', 'tasks', 'import_active_storage', 'csv_import')
    album_csv_path = base_path.join('albums.csv')
    @mappings_csv_path = base_path.join('album_mappings.csv')

    @mappings_csv = CSV.open(@mappings_csv_path, "wb")
    @mappings_csv << ["old_id", "new_uuid", "title"]

    CSV.foreach(album_csv_path, headers: true) do |row|
      album = Album.find_by(title: row['title'])
      if album && album.title.eql?(row['title']) && album.password.eql?(row['password'])
        puts "Album #{row['title']} already exists. Skipping..."
        next
      else
        puts "Processing album #{row['id']}..."
        puts create_album(row)
      end
    end

    @mappings_csv.close
    puts "Exported album_mappings.csv"
  end
end


def create_album(row)
  album = Album.new(
    title: row['title'],
    password: row['password'],
    code: row['code'],
    counter: row['counter'].to_i,
    emails: row['emails'].nil? ? [] : row['emails'].split(';'),
    date_event: Date.parse(row['date_event']),
    published_at: DateTime.parse(row['date_event']),
    status: row['status'] || 'draft',
    created_at: DateTime.parse(row['created_at']),
    updated_at: DateTime.parse(row['updated_at']),
    slug: "#{row['title'].parameterize}"
  )

  if album.save
    puts "Album #{album.title} (UUID: #{album.id}) created successfully."
    # Escribir el mapeo en el CSV
    @mappings_csv << [row['id'], album.id, row['title']]
  else
    puts "Failed to create album #{row['title']}. Errors: #{album.errors.full_messages.join(", ")}"
  end
end