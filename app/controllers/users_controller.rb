class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    authorize @user
    @tattoos = Tattoo.where(user: @user)
    @artist = @tattoos.first.user
  end
end
