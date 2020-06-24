class SheltersController < ApplicationController
  def index
    @shelters = Shelter.all
  end

  def new
    @shelter = Shelter.new
  end

  def create
    shelter = Shelter.new shelter_params
    shelter.save
    redirect_to shelters_path
  end

  def update
    shelter = Shelter.find params[:id]
    shelter.update shelter_params
    redirect_to shelter
  end

  def edit
    @shelter = Shelter.find params[:id]
  end

  def show
    @shelter = Shelter.find params[:id]
  end

  def destroy
    shelter = Shelter.find params[:id]
    shelter.destroy
    redirect_to shelters_path
  end

  private
  def shelter_params
    params.require(:shelter).permit(:name, :address, :phone, :email, :adoption_policy)
  end


end
