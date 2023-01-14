class BeachsController < ApplicationController

  def index
    @beachs = Beach.all
  end

  def show
    @beachs = Beachs.find(params[:id])
    @beachs = Beachs.new
  end
end
