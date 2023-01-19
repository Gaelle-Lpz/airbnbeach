class BeachesController < ApplicationController

  def index
    @beaches = Beach.all
  end

  def edit
  end

  def new
    @beach = Beach.new
  end

  def create
    @beach = Beach.new(beach_params)
    @beach.user = current_user
    @beach.save
  end

  def show
    @beach = Beach.find(params[:id])
  end

  private

  def beach_params
    params.require(:beach).permit(:name, :location, :price, :description)
  end
end
