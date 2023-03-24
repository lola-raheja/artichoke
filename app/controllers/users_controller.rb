class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @artworks = @user.artworks
    @bids = @user.bids.order(created_at: :desc)
    @favorite_artworks = current_user.favorited_by_type('Artwork')
  end
end
