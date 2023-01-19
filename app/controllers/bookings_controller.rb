class BookingsController < ApplicationController
  before_action :set_booking, only: [:show]
  before_action :set_beach, only: [:new, :create]

  def index
    @bookings = Booking.all
  end

  def show
    @review = Review.new(bookig: @booking)
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.beach = @beach
    @booking.user = current_user

    if @booking.save
      redirect_to beaches_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def my_bookings
    @bookings = Booking.where(user: current_user)
  end

  private

  def set_beach
    @beach = Beach.find(params[:beach_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
