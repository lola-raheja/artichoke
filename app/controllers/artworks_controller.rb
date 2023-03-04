class ArtworksController < ApplicationController
  def show
    @artwork = Artwork.find(params[:id])
    @bids = @artwork.bids
    highest_bid = @bids.max_by { |bid| bid.amount }
    @bid = Bid.new
  end
end
