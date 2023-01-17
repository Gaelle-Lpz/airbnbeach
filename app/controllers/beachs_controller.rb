class BeachsController < ApplicationController


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
