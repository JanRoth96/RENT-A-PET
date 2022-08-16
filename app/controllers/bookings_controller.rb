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
  #   @pet = Pet.new(pet_params)
  #   if @pet.save
  #     redirect_to pet_path(@pet)
  #   else
  #     render :new, status: :unprocessable_entity
  #   end
  # end
end
