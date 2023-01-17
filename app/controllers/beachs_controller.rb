class BeachsController < ApplicationController


  def index
    @beachs = Beach.all
  end

  def show
    @beach = Beach.find(params[:id])
    @beach = Beach.new
  end
end
