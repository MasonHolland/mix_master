class PlaylistsController < ApplicationController

  def index
  end

  def show
    @playlist = Playlist.find(params[:id])
  end

  def new
    @playlist = Playlist.new
    @songs = Song.all
  end

  def create
    @playlist = Playlist.create(playlist_params)
    redirect_to @playlist
  end

  def update
    if @playlist.update(artist_params)
      redirect_to @artist
    else
      render :edit
    end
  end

  private

  def playlist_params
    params.require(:playlist).permit(:name, song_ids: [])
  end
end
