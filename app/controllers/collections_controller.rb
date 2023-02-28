class CollectionsController < ApplicationController
  def show
    @collection = Collection.find(params[:id])
    @artworks = @collection.artworks
    @artworks = @collection.artworks.search_by_medium(params[:medium]) if params[:medium].present?
    @artworks = @collection.artworks.search_by_location(params[:location]) if params[:location].present?
  end
end
