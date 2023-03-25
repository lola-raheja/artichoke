class CollectionsController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  def assign_to_column(artworks)
    artworks_array = artworks.in_groups(3)
    column_1 = artworks_array[0].compact
    column_2 = artworks_array[1].compact
    column_3 = artworks_array[2].compact
    @columns = [column_1, column_2, column_3]
  end

  def show
    @collection = Collection.find(params[:id])
    artworks = @collection.artworks.order(title: :asc)
    if params[:user_location].present?
      artworks = artworks.joins(:user).where(users: { location: params[:user_location] })
    end
    if params[:medium_ids].present? && params[:medium_ids].size > 1
      artworks = artworks.where(medium_id: params[:medium_ids])
    end
    if params[:price].present?
      price_range = params[:price].split(',')
      price_min = price_range[0].to_i
      price_max = price_range[1].to_i
      artworks = artworks.where(price: price_min..price_max)
    end
    if params[:size].present?
      case params[:size]
      when 'small'
        artworks = artworks.select { |artwork| artwork.average_size < 40 }
      when 'medium'
        artworks = artworks.select { |artwork| artwork.average_size >= 40 && artwork.average_size <= 100 }
      when 'large'
        artworks = artworks.select { |artwork| artwork.average_size > 100 }
      end
    end
    assign_to_column(artworks)
  end

  def toggle_favorite
    @artwork = Artwork.find(params[:id])
    current_user.favorited?(@artwork) ? current_user.unfavorite(@artwork) : current_user.favorite(@artwork)
  end
end
