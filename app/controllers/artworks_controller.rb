class ArtworksController < ActionController::Base
  def show
    @artwork = Artwork.find(params[:id])
  end
end
