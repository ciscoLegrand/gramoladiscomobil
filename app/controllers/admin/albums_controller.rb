class Admin::AlbumsController < ApplicationController
  layout "admin"
  before_action :set_album, only: %i[ show edit update destroy ]

  # GET /admin/albums or /admin/albums.json
  def index
    @albums = Album.all
    @total_records = @albums.count
    @pagy, @albums = pagy(@albums, items: 5)
  end

  # GET /admin/albums/1 or /admin/albums/1.json
  def show
  end

  # GET /admin/albums/new
  def new
    @album = Album.new
  end

  # GET /admin/albums/1/edit
  def edit
  end

  # POST /admin/albums or /admin/albums.json
  def create
    album = Album.new(album_params)

    respond_to do |format|
      if album.save 
        format.html { redirect_to edit_admin_album_url(album), success: { title: "Success", body: "Album was successfully created." } }
        format.json { render :show, status: :created, location: album }
      else
        format.html { redirect_to new_admin_album_url, alert: { title: 'no se ha creado ', body: album.errors.full_messages } }
        format.json { render json: album.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/albums/1 or /admin/albums/1.json
  def update
    respond_to do |format|
      if @album.update(album_params)
        format.html { redirect_to admin_album_url(@album), success: { title: "Success", body: "Album was successfully updated." } }
        format.json { render :show, status: :ok, location: @album }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/albums/1 or /admin/albums/1.json
  def destroy
    name = @album.title
    images = @album.images.size
    @album.images.purge
    @album.destroy
    
    respond_to do |format|
      format.html { redirect_to admin_albums_url, success: {title: name, body: "Successfully delete album and #{images}"} }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_album
      @album = Album.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def album_params
      params.require(:album).permit(:title, :password, :code, :counter, :emails, :date_event, :published_at, :status, images: [])
    end
end
