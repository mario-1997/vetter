class TreatmentPetsController < ApplicationController
  def index
    @treatment_pets = TreatmentPet.all
  end

  def new
    @treatment_pet = TreatmentPet.new
  end

  def create
    @treatment_pet = TreatmentPet.new(treatment_pets_params)
    if @treatment_pet.save
      redirect_to treatment_pets_path, notice: "Tratamiento aplicado"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def treatment_pets_params
    params.require(:treatment_pet).permit(:pet_id, :treatment_id)

  end
end