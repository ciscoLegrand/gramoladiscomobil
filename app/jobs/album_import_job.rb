class AlbumImportJob < ApplicationJob
  queue_as :default
  sidekiq_options retry: false

  before_enqueue do |job|
    serialized_data = Sidekiq.dump_json(job.arguments)
    data_size = serialized_data.bytesize
    Rails.logger.info "\n🏗️🚄🚄\nSize of the enqueued data for AlbumImportJob: #{data_size} bytes\n🏗️🚄\n" 
  end

  def perform(album_data)
    @error_info = nil
    start_time = Time.now
    Rails.logger.info "🚀 Starting Album import for #{album_data[:album_title]} at #{start_time}" 
  
    album = create_album_and_return_id_map(album_data)
  
    if album && album.persisted?
      Rails.logger.info "✅ Album #{album_data[:album_title]} imported successfully."
      Rails.logger.info "📧 Sending import summary email for #{album_data[:album_title]}."
      send_import_summary_email(album, start_time, Time.now)
      Rails.logger.info "🔴✅ Successfully ending taks with #{album.images.count} images."
    elsif album
      Rails.logger.error "❌ Error importing album #{album_data[:album_title]}. Errors: #{album.errors.full_messages.join(', ')}\n\n⛑️⛑️ #{@error_info}" 
      send_import_error_email if @error_info
      Rails.logger.info "🔴 ❌ ending task with some errors."
    else
      Rails.logger.error "💀 Error desconocido durante la importación del álbum.\n\n⛑️⛑️ #{@error_info}"
      send_import_error_email if @error_info
      Rails.logger.info "🔴 ❌ ending task with some errors."
    end
  end

  private

  def create_album_and_return_id_map(album_data)
    album = Album.new(
      title: album_data[:album_title],
      date_event: album_data[:album_date_event],
      password: album_data[:album_password],
      published_at: album_data[:album_date_event],
      emails: ['cisco.glez@gmail.com']
    )

    blobs = create_blobs_from_data(album_data[:blobs])

    begin
      Album.transaction do
        album.save!
        album.images.attach(blobs)
        album.publish! if album.published_at.past? && album.images.attached?
      end
    rescue => e
      Rails.logger.error "❌ Error al guardar el álbum: #{e.message}"
      Rails.logger.debug "💀💀 Error en la tarea!!\n👓 #{e.message}"
      set_error_info(e.message, e.backtrace.first, album_data)
      return [nil, {}] # Aquí aseguramos que se devuelva un array de dos elementos
    end

    album
  end

  def create_blobs_from_data(images_data)
    return [] unless images_data
  
    duplicated_blobs = []
  
    blobs = images_data.map do |blob_data|
      duplicated_blobs = []
      if ActiveStorage::Blob.exists?(key: blob_data['key'])
        Rails.logger.info "🔁 Blob #{blob_data['key']} already exists. Skipping..."
        duplicated_blobs << blob_data['key']
      else
        ActiveStorage::Blob.new(
          key: blob_data['key'],
          filename: blob_data['filename'],
          content_type: blob_data['content_type'],
          byte_size: blob_data['byte_size'].to_i,
          checksum: blob_data['checksum'],
          metadata: JSON.parse(blob_data['metadata'])
        )
      end
    end.compact

    add_duplicated_blob_error(duplicated_blobs)
    blobs
  end
  
  def add_duplicated_blob_error(duplicated_blobs)
    return if duplicated_blobs.empty?

    error_message = "Duplicated blob keys detected: #{duplicated_blobs.join(', ')}"
    @error_info ||= {}
    @error_info[:duplicated_blob_keys] = error_message
  end

  def send_import_summary_email(album, start_time, end_time)
    info = {
      process_name: "Importación de ActiveStorage: #{album.title}",
      start_time: start_time.strftime('%Y-%m-%d %H:%M:%S'),
      end_time: end_time.strftime('%Y-%m-%d %H:%M:%S'),
      environment: Rails.env,
      ruby_version: RUBY_VERSION,
      rails_version: Rails::VERSION::STRING,
      user: "System (ActiveJob): AlbumImportJob",
      successful_albums: album.persisted? ? 1 : 0,
      failed_albums: album.persisted? ? 0 : 1,
      total_duration: end_time - start_time,
      errors: album.errors.full_messages
    }

    ErrorMailer.import_summary(info).deliver_now
  end

  def set_error_info(message, backtrace_line, data)
    @error_info = {
      error_message: message,
      error_line: backtrace_line,
      error_data: data
    }
  end

  def send_import_error_email
    ErrorMailer.import_error(@error_info).deliver_now
  end
end
