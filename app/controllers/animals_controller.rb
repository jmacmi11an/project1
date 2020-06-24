class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def new
    @animal = Animal.new
  end

  def create
    animal = Animal.new animal_params
    if params[:animal][:images].present?
      params[:animal][:images].each do |image|
        res = Cloudinary::Uploader.upload(image)
        animal.images << res["public_id"]
      end
    end
    animal.save
    redirect_to animals_path
  end

  def update
    animal = Animal.find params[:id]
    animal.update animal_params
    redirect_to animal
  end

  def edit
    @animal = Animal.find params[:id]
  end

  def show
    @animal = Animal.find params[:id]
  end

  def destroy
    animal = Animal.find params[:id]
    animal.destroy
    redirect_to animals_path
  end

  private
  def animal_params
    params.require(:animal).permit(:name, :species, :breed, :size, :gender, :age, :about, :hair_length, :adoption_cost, :shelter_id, :image)
  end
end
