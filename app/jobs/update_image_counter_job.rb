class UpdateImageCounterJob < ApplicationJob
  queue_as :default

  def perform(album_id)
    album = Album.find_by(id: album_id)
    return if album.counter == album.images.count
    Rails.logger.info "📀 Updating counter for Album (#{album.title})..."
    album.update! counter: album.images.count
  end
end