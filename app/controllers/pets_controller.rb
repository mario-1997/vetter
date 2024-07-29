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

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:id])
    if @pet.update(pet_params)
      redirect_to pets_path, notice: "se ha actualizado correctamente"
    else
      render :edit, notice: 'Pet was not updated.'
    end
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to pets_path, notice: 'Pet was successfully destroyed.'
  end

  private
  def pet_params
    params.require(:pet).permit(:name, :animal_type, :breed, :age, :chip_number, :client_id)
  end
end