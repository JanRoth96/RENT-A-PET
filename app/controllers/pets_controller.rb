class PetsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    if params[:query].present?
      sql_query = <<~SQL
      species ILIKE :query
      OR location ILIKE :query
      SQL
      @pets = policy_scope(Pet).joins(:shelter).where(sql_query, query: "%#{params[:query]}%")
    else
      @pets = policy_scope(Pet)
    end
  end

  def show
    @pet = Pet.find(params[:id])
    authorize @pet
    @booking = Booking.new
    @pets = Pet.where(species: @pet.species).limit(4)
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

  def destroy
    @pet = Pet.find(params[:id])
    authorize @pet
    @pet.destroy
    redirect_to shelter_path(@pet)
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :gender, :species, :age, :price, :description, :photo)
  end
end
