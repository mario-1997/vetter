class ClientsController < ApplicationController
  before_action :authenticate_user!

  def index
    @clients = Client.all
  end

  def show
    @client = Client.find(params[:id])
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      redirect_to clients_path, notice: 'Client was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @client = Client.find(params[:id])
  end

  def update
    @client = Client.find(params[:id])
    if @client.update(client_params)
      redirect_to clients_path, notice: 'Client was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @client = Client.find(params[:id])
    @client.destroy
    redirect_to clients_path, notice: 'Client was successfully destroyed.'
  end

  private
  def client_params
    params.require(:client).permit(:name, :surname, :age, :email)
  end


end