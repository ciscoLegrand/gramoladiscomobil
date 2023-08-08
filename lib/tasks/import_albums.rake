# lib/tasks/import_albums.rake
require 'csv'

namespace :import do
  desc "Import albums from CSV and export mapping of old ID to new UUID"
  task :albums, [:csv_path] => :environment do |t, args|
    raise "You must provide a path to the CSV file. E.g., rake import:albums['path/to/file.csv']" unless args.csv_path

    mappings_csv = CSV.open("album_mappings.csv", "wb")
    mappings_csv << ["old_id", "new_uuid", "title"]

    CSV.foreach(args.csv_path, headers: true) do |row|
      puts "Processing album #{row['id']}..."

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
        mappings_csv << [row['id'], album.id, row['title']]
      else
        puts "Failed to create album #{row['title']}. Errors: #{album.errors.full_messages.join(", ")}"
      end
    end

    mappings_csv.close
    puts "Exported album_mappings.csv"
  end
end
