class BeachsController < ApplicationController


  def index
    @beachs = Beach.all
  end

  def new
    @beach = Beach.new
  end

  def edit
  end

  def create
    @beach = Beach.new(beach_params)
    @beach.user = current_user
    @beach.save
  end

  def show
    @beach = Beach.find(params[:id])
    @beach = Beach.new
  end

  private

  def beach_params
    params.require(:beach).permit(:name, :location, :price, :description)
  end
end
