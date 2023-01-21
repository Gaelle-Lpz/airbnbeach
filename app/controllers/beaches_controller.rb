class BeachesController < ApplicationController
  before_action :set_beach, only: [:show, :edit, :update, :destroy]
  def index
    @beaches = Beach.all
  end

  def show
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
    @beach.update(beach_parms)
    redirect_to_path(@beach)
  end

  def destroy
    @beach.destroy
    redirect_to beaches_path
  end

  private

  def set_beach
    @beach = Beach.find(params[:id])
  end

  def beach_params
    params.require(:beach).permit(:name, :location, :price, :description)
  end
end
