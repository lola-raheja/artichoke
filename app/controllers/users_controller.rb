class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @artworks = @user.artworks
    @bids = @user.bids.order(created_at: :desc)
  end
end
