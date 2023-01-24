class BeachesController < ApplicationController
  before_action :set_beach, only: [:show, :edit, :update, :destroy]
  def index
    @beaches = Beach.all

    @markers = @beaches.geocoded.map do |beach|
      { lat: beach.latitude,
        lng: beach.longitude

      }
    end

    if params[:query].present?
      @beaches = Beach.beach_search(params[:query])
    else
      @beaches = Beach.all

    end
  end

  def show
    @reviews = @beach.reviews
    @my_beach_bookings = @beach.bookings
  end

  def new
    @beach = Beach.new
  end

  def create
    @beach = Beach.new(beach_params)
    @beach.user = current_user
    @beach.save
    redirect_to my_beaches_path
  end

  def edit
  end

  def update
    @beach.update(beach_params)
    redirect_to beach_path(@beach)
  end

  def destroy
    @beach.destroy
    redirect_to beaches_path
  end

  def my_beaches
    @beaches = Beach.where(user: current_user)
  end

  private

  def set_beach
    @beach = Beach.find(params[:id])
  end

  def beach_params
    params.require(:beach).permit(:name, :location, :price, :description)
  end
end
