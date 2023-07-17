class Admin::AlbumsController < ApplicationController
  layout "admin"
  before_action :set_album, only: %i[ show edit update destroy ]

  # GET /admin/albums or /admin/albums.json
  def index
    @albums = Album.all
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
      if album_params[:images].blank?
        format.html { redirect_to new_admin_album_url, alert: 'no se crea album sin imagenes' }
      else
        if album.save 
          format.html { redirect_to admin_album_url(album), success: { title: "Success", body: "Album was successfully created." } }
          format.json { render :show, status: :created, location: album }
        else
          format.html { redirect_to admin_new_album_url, alert: 'no se ha creado ' }
          format.json { render json: album.errors, status: :unprocessable_entity }
        end
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
    @album.destroy

    respond_to do |format|
      format.html { redirect_to admin_albums_url, notice: "Album was successfully destroyed." }
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
      params.require(:album).permit(:title, :password, :code, :counter, :emails, :published_at, :status, images: [])
    end
end