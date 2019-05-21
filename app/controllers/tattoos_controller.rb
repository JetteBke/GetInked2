class TattoosController < ApplicationController
  def index
    @tattoos = Tattoo.all
  end

  def show
    @tattoo = Tattoo.find(params[:id])
  end

  def new
    @tattoo = Tattoo.new
  end

  def create
    @tattoo = Tattoo.create(tattoo_params)
    if @tattoo.save
      redirect_to tattoos_path
    else
      render :new
    end
  end

  def destroy
    @tattoo = Tattoo.find(params[:id])
    @tattoo.delete
    redirect_to @tatt
  end

  private

  def tattoo_params
    params.require(:tattoo).permit(:photo, :description)
  end
end
