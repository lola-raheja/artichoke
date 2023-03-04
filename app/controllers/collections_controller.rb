class CollectionsController < ApplicationController
  def show
    @collection = Collection.find(params[:id])

    @artworks = @collection.artworks
    if params[:medium].present?
      @artworks = @artworks.where(medium: params[:medium])
    end
    if params[:price].present?
      price_range = params[:price].split(',')
      price_min = price_range[0].to_i
      price_max = price_range[1].to_i
      @artworks = @artworks.where(price: price_min..price_max)
    end
    if params[:size].present?
      case params[:size]
      when 'small'
        @artworks = @artworks.select { |artwork| artwork.average_size < 40 }
      when 'medium'
        @artworks = @artworks.select { |artwork| artwork.average_size >= 40 && artwork.average_size <= 100 }
      when 'large'
        @artworks = @artworks.select { |artwork| artwork.average_size > 100 }
      end
    end
  end
end
