class UpdateImageCounterJob < ApplicationJob
  queue_as :default

  def perform(album_id)
    album = Album.find_by(id: album_id)
    return if album.counter == album.images.count

    album.update! counter: album.images.count
  end
end