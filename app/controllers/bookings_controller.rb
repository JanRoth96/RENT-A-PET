class BookingsController < ApplicationController
  before_action :set_pet, except: [:index, :show, :update, :destroy]

  def index
    @bookings = policy_scope(Booking)
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.pet = @pet
    @booking.user = current_user
    @booking.status = "pending"
    authorize @booking
    if @booking.save
      redirect_to bookings_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @booking = Booking.find(params[:id])
    authorize @booking
    if @booking.update(booking_params)
      redirect_to shelter_path
    else
      # render # where was the booking update form?
      @shelter = current_user.shelter
      render "shelters/shelter"
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def set_pet
    @pet = Pet.find(params[:pet_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
