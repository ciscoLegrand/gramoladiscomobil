require 'csv'

namespace :import do
  desc 'Crea registros en ActiveStorageAttachment basado en el CSV y mapeo de album'
  task attachments_from_csv: :environment do
    # Definimos los paths absolutos a los CSVs
    base_path = Rails.root.join('lib', 'tasks', 'import_active_storage', 'csv_import')
    active_storage_attachments_path = base_path.join('active_storage_attachments.csv')
    album_mapping_path = base_path.join('album_mappings.csv')

    # Cargamos el mapeo de old_id a new_uuid en un hash
    mapping = {}
    CSV.foreach(album_mapping_path, headers: true) do |row|
      mapping[row["old_id"]] = row["new_uuid"]
    end

    # Cargamos el CSV de active_storage_attachments y creamos los registros
    aux = 0
    CSV.foreach(active_storage_attachments_path, headers: true) do |row|
      row["record_id"] = mapping[row["record_id"]]
      if row["record_type"].eql?('Gallery') || row["record_type"].eql?('Album')
        puts "#{row['record_type']} Processing attachment #{row["name"]}..."
        puts build_attachmet(row, aux += 1)
      else
        puts "Skipping attachment #{row["name"]} because it's not an album or gallery."
        next
      end


    end

    puts "Creación de registros completa"
  end
end

def build_attachmet(row, aux)
  attach = ActiveStorage::Attachment.new(
    name: row["name"],
    record_type: 'Album',
    record_id: row["record_id"],
    blob_id: row["blob_id"],
    created_at: row["created_at"]
  )

  if attach.save
    puts "🙂Creando #{aux} registro: #{row["name"]}..." 
  else
    puts "🙁 Failed to create attachment #{row["name"]}.\n❌ Errors: #{attach.errors.full_messages.join(", ")}"
  end
end