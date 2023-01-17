class BeachsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @beachs = Beach.all
  end

  def new
    @beach = Beach.new
  end
  def show
    @beach = Beach.find(params[:id])
    @beach = Beach.new
  end
end
