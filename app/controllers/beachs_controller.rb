class BeachsController < ApplicationController
  def show
    @beachs = Beachs.find(params[:id])
    @beachs = Beachs.new
  end
end
