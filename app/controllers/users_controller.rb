class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @artworks = @user.artworks
  end
end
