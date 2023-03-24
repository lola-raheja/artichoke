class BidsController < ApplicationController
  before_action :set_artwork, only: [:create]

  def show
    @bid = Bid.find(params[:id])
    @artworks = @bid.artwork.user.artworks.where.not(id: @bid.artwork.id)
    @artwork = @artworks.present? ? @artworks.sample : nil
    @collections = @bid.artwork.collections
    @collection = @collections.present? ? @collections.sample : nil
    @highest_bid = @bid.amount
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
    redirect_to current_user, notice: "Bid was deleted."
  end

  def edit
    @bid = Bid.find(params[:id])
  end

  def update
    @bid = Bid.find(params[:id])
    @bid.update(bid_params)
    redirect_to bid_path(@bid), notice: "Bid was edited."
  end

  private

  def bid_params
    params.require(:bid).permit(:amount)
  end

  def set_artwork
    @artwork = Artwork.find(params[:artwork_id])
  end
end
