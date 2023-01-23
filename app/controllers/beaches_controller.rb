class BeachesController < ApplicationController
  before_action :set_beach, only: [:show, :edit, :update, :destroy]
  def index
    @beaches = Beach.all
  end

  def show
    @reviews = @beach.reviews
    @average_rating = 0.0
    @reviews.each { |review| @average_rating += review.rating / @reviews.size }
  end

  def new
    @beach = Beach.new
  end

  def create
    @beach = Beach.new(beach_params)
    @beach.user = current_user
    @beach.save
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
