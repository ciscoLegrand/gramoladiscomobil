class AlbumsController < ApplicationController
  before_action :set_album, only: %i[ show edit update destroy ]

  # GET /admin/albums or /admin/albums.json
  def index
    @pagy, @albums = pagy_countless(Album.where(status: 'published').order(published_at: :desc), items: 12)
    respond_to do |format|
      format.html # GET
      format.turbo_stream # POST
    end
  end

  # GET /admin/albums/1 or /admin/albums/1.json
  def show
    @images = @album.images
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_album
    @album = Album.friendly.find(params[:id])
  end
end
