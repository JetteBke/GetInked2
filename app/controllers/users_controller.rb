class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    authorize @user
    @tattoos = Tattoo.where(user: @user)
    @artist = @tattoos.first.user if @user.role == "artist"
    @bookings = policy_scope(Booking).order(created_at: :desc)
  end
end
