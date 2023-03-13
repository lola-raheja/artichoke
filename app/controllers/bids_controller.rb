class BidsController < ApplicationController
  before_action :set_artwork, only: [:create]

  def show
    @bid = Bid.find(params[:id])
    @artworks = @bid.artwork.user.artworks
    @collections = Collection.joins(:artwork_collections).where(artwork_collections: { artwork: @bid.artwork })

  end

  def create
    @bid = Bid.new(bid_params)
    @bid.artwork = @artwork
    @bid.user = current_user
    if @bid.save
      redirect_to bid_path(@bid), notice: "Bid was successfully made."
    else
      render 'artworks/show', notice: "Bid was not made."
    end
  end

  def destroy
    @bid = Bid.find(params[:id])
    @bid.destroy
    redirect_to artwork_path(@bid.artwork), notice: "Bid deleted."
  end

  def edit
    @bid = Bid.find(params[:id])
  end

  def update
    @bid = Bid.find(params[:id])
    @bid.update(bid_params)
    redirect_to artwork_path(@bid.artwork)
  end

  private

  def bid_params
    params.require(:bid).permit(:amount)
  end

  def set_artwork
    @artwork = Artwork.find(params[:artwork_id])
  end
end
