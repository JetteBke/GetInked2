class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    authorize @user
    @tattoo = Tattoo.last
  end
end
