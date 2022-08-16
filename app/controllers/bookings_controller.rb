class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  # def new
  #   @booking = Booking.new
  #   authorize @booking
  # end

  # def create
  # end
end
