class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def new
    @animal = Animal.new
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
end
