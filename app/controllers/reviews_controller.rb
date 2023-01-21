class ReviewsController < ApplicationController
  before_action :set_beach, only: [:new, :create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.save
    redirect_to beach_path(@beach)
  end

  private

  def set_beach
    @beach = Beach.find(params[:beach_id])
  end

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
