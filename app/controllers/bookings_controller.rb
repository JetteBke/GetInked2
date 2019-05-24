class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :destroy]
  def index
    @bookings = policy_scope(Booking).order(created_at: :desc)
  end

  def show
  end

  def new
    @booking = Booking.new
    @tattoo = Tattoo.find(params[:tattoo_id])
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.tattoo = Tattoo.find(params[:tattoo_id])
    authorize @booking
    if @booking.save
      redirect_to user_bookings_path(current_user)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @booking.update(booking_params)
  end

  def destroy
    @booking.delete
    authorize @booking
    redirect_to current_user
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:date, :status)
  end
end
