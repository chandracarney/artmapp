class ArtworksController < ApplicationController
  def show
    @artwork = Artwork.find_by(id: params[:id])
  end
end
