class ArtworksController < ApplicationController
  def show
    @artwork = Artwork.find(params[:id])
    @bids = @artwork.bids
    @bid = Bid.new
  end
end
