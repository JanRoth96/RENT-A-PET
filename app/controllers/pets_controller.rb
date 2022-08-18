class PetsController < ApplicationController
  def index
    @pets = policy_scope(Pet)
  end

  def show
    @pet = Pet.find(params[:id])
    authorize @pet
    @booking = Booking.new
    authorize @booking
  end

  def new
    @pet = Pet.new
    authorize @pet
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.shelter = current_user.shelter
    authorize @pet
    if @pet.save
      redirect_to pet_path(@pet)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :gender, :species, :age, :price, :description)
  end
end
