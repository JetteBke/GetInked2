class TattoosController < ApplicationController
  def index
    @tattoos = policy_scope(Tattoo).order(created_at: :desc)
  end

  def show
    @tattoo = Tattoo.find(params[:id])
    @booking = Booking.new
    authorize @tattoo
    @user = current_user
    @artist = @tattoo.user
  end

  def new
    @tattoo = Tattoo.new
    authorize @tattoo
    @user = current_user
  end

  def create
    @tattoo = Tattoo.create(tattoo_params)
    authorize @tattoo
    if @tattoo.save
      redirect_to tattoos_path
    else
      render :new
    end
  end

  def destroy
    @tattoo = Tattoo.find(params[:id])
    @tattoo.delete
    redirect_to @tattoo
    authorize @tattoo
  end

  private

  def tattoo_params
    params.require(:tattoo).permit(:photo, :description)
  end
end
