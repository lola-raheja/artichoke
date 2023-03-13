class ArtworksController < ApplicationController
  def index
    @artworks = params[:query].present? ? Artwork.global_search(params[:query]) : Artwork.order(title: :asc)
    if params[:user_location].present?
      @artworks = Artwork.user.where(users: { location: params[:user_location] })
    end
    if params[:medium].present?
      @artworks = Artwork.where(medium: params[:medium])
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
    @bids = @artwork.bids
    @bid = Bid.new
  end
end
