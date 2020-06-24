class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def new
    @animal = Animal.new
  end

  def edit
  end

  def show
    @animal = Animal.find params[:id]
  end
end
