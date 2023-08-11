class UpdateImageCounterJob < ApplicationJob
  queue_as :default

  def perform(album_id, host, current_user_id = nil)
    begin
      
      album = Album.find_by(id: album_id)
      album.current_host    = host
      album.current_user_id = current_user_id
      user_info = User.find_by(id: current_user_id)&.email if current_user_id.present?
      user_info = "System (background job): update_image_counter_job" if user_info.nil?

      return if album.counter == album.images.count

      Rails.logger.info "📀 Updating counter for Album (#{album.title})..."
      album.update! counter: album.images.count
    rescue => e
      # Imprimir el error a la consola
      puts "🚨 Error during the import process: #{e.message}"
      puts e.backtrace

      # Recopilando información adicional
      error_info = {
        process_name: "Error during update image counter for Album (#{album.title} background job",
        end_time: Time.now.strftime('%Y-%m-%d %H:%M:%S'),
        environment: Rails.env,
        ruby_version: RUBY_VERSION,
        rails_version: Rails::VERSION::STRING,
        user: user_info,
        host_info: host,
        error_row: { album_title: album.title, error: e.messages }
      }

      # Enviar correo electrónico
      ErrorMailer.import_error(e, e.backtrace, error_info).deliver_later
    end
  end
end
