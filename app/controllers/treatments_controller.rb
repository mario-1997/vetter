class TreatmentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @treatments = Treatment.all
  end

  def new
    @treatment = Treatment.new
  end

  def create
    @treatment = Treatment.new(treatment_params)
    if @treatment.save
      redirect_to treatments_path, notice: "Guardado correctamente"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @treatment = Treatment.find(params[:id])
  end

  def update
    @treatment = Treatment.find(params[:id])
    if @treatment.update(treatment_params)
      redirect_to treatments_path, notice: "Guardado correctamente"
    else
      render :edit, status: :unprocessable_entity
    end
  end


  private
  def treatment_params
    params.require(:treatment).permit(:name, :price)
  end


end