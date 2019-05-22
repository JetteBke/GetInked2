class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :create, :destroy]
  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @booking = Booking.new
    @user = current_user
    authorize @booking
  end

  def create
    @booking = Booking.create(booking_params)
    if @booking.save
      redirect_to bookings_path
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
    redirect_to @tatt
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:date, :status)
  end
end
