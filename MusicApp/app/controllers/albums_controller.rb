class Album < ApplicationController

  # GET /bands/:band_id/albums/new (new_band_album_url(@band))
  def new
    @bands = Band.all
    @band = Band.find_by(id: params[band_id])
    @album = Album.new
    render :new
  end
  
end