class CollectionsController < ApplicationController
  def show
    @collection = Collection.find(params[:id])
    @artworks = @collection.artworks
  end
end
