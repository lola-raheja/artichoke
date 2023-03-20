class ArtworksController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def assign_to_column(artworks)
    artworks_array = artworks.in_groups(3)
    column_1 = artworks_array[0].compact
    column_2 = artworks_array[1].compact
    column_3 = artworks_array[2].compact
    @columns = [column_1, column_2, column_3]
  end

  def index
    artworks = params[:query].present? ? Artwork.global_search(params[:query]) : Artwork.order(title: :asc)
    if params[:user_location].present?
      artworks = Artwork.user.where(users: { location: params[:user_location] })
    end
    if params[:medium_ids].present? && params[:medium_ids].size > 1
      artworks = artworks.where(medium_id: params[:medium_ids])
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
        artworks = Artwork.select { |artwork| artwork.average_size < 40 }
      when 'medium'
        artworks = Artwork.select { |artwork| artwork.average_size >= 40 && artwork.average_size <= 100 }
      when 'large'
        artworks = Artwork.select { |artwork| artwork.average_size > 100 }
      end
    end
    assign_to_column(artworks)
  end

  # def assign_to_column(artworks)
  #   artworks_array = artworks.in_groups(3)
  #   column_1 = artworks_array[0].compact
  #   column_2 = artworks_array[1].compact
  #   column_3 = artworks_array[2].compact
  #   @columns = [column_1, column_2, column_3]
  # end

  # in view call column_1 = @columns[0]
  # in view call @column_1 and fill column 1
  # do the same for @column_2

  def show
    @artwork = Artwork.find(params[:id])
    @highest_bid = @artwork.bids.maximum(:amount) || @artwork.price
    @bid = @artwork.bids.find_by(user: current_user) || Bid.new
    @collections = @artwork.collections
    @collection = @collections.present? ? @collections.sample : nil
  end
end
