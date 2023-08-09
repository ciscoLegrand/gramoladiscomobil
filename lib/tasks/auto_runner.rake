namespace :import do
  desc 'Run both active_storage_attachments and active_storage_blobs import tasks'
  task auto_import_all: [:environment, 'import:albums', 'import:blobs_from_csv', 'import:attachments_from_csv'] do
    puts "Both tasks have been executed successfully!"
  end
end
