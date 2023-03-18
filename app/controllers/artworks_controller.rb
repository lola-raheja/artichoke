class ArtworksController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @artworks = params[:query].present? ? Artwork.global_search(params[:query]) : Artwork.order(title: :asc)
    if params[:user_location].present?
      @artworks = Artwork.user.where(users: { location: params[:user_location] })
    end
    if params[:medium_ids].present? && params[:medium_ids].size > 1
      # media = params[:medium_ids].map |medium_id| { Medium.find(medium_id) }
      @artworks = @artworks.where(medium_id: params[:medium_ids])
    end
    if params[:price].present?
      price_range = params[:price].split(',')
      price_min = price_range[0].to_i
      price_max = price_range[1].to_i
      @artworks = Artwork.where(price: price_min..price_max)
    end
    if params[:size].present?
      case params[:size]
      when 'small'
        @artworks = Artwork.select { |artwork| artwork.average_size < 40 }
      when 'medium'
        @artworks = Artwork.select { |artwork| artwork.average_size >= 40 && artwork.average_size <= 100 }
      when 'large'
        @artworks = Artwork.select { |artwork| artwork.average_size > 100 }
      end
    end
  end

  def show
    @artwork = Artwork.find(params[:id])
    @highest_bid = @artwork.bids.maximum(:amount) || @artwork.price
    @bid = @artwork.bids.find_by(user: current_user) || Bid.new
  end
end
