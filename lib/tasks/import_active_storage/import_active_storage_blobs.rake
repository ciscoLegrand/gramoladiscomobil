namespace :import do
  desc 'Import active_storage_blobs data from CSV'
  task blobs_from_csv: :environment do
    require 'csv'

    # Cambia este path al path correcto de tu archivo CSV
    base_path = Rails.root.join('lib', 'tasks', 'import_active_storage', 'csv_import')
    csv_file_path = base_path.join('active_storage_blobs.csv')

    records = []

    # Leer el archivo CSV y procesarlo
    CSV.foreach(csv_file_path, headers: true, header_converters: :symbol) do |row|
      records << row.to_h
    end
    aux = 0
    records.each do |record|
      metadata = record[:metadata] == 'NULL' ? '' : JSON.parse(record[:metadata])
      blob = ActiveStorage::Blob.new(
        id: record[:id],
        key: record[:key],
        filename: record[:filename],
        content_type: record[:content_type],
        metadata: metadata,
        service_name: record[:service_name],
        byte_size: record[:byte_size].to_i,
        checksum: record[:checksum],
        created_at: record[:created_at]
      )
      if blob.save
        puts "🦥 #{aux +=1 } active storage blob #{record[:filename]} imported"
      else
        puts "🙁 Failed to import active storage blob #{record[:filename]}.\n❌ Errors: #{blob.errors.full_messages.join(", ")}"
      end
    end

    puts "Imported #{records.size} blobs!"
  end
end
