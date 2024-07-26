class PetsController < ApplicationController
  def index
    @pets = Pet.all
    @clients = Client.all
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to pets_path, notice: 'Pet was successfully created.'
    else
      render :new, notice: 'Pet was not created.'
    end
  end

  private
  def pet_params
    params.require(:pet).permit(:name, :animal_type, :breed, :age, :chip_number, :client_id)
  end
end