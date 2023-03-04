class UsersController < ActionController::Base
  def show
    @user = User.find(params[:id])
    @artworks = @user.artworks
  end
end
