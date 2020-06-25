class FavoritesController < ApplicationController

  def add_animal
    animal = Animal.find params[:animal_id]
    @current_user.animals << animal
    redirect_to animal_path(animal.id)
  end

  def remove_animal
    animal = Animal.find params[:animal_id]
    @current_user.animals.delete(animal)
    redirect_to animal_path(animal.id)
  end
end
