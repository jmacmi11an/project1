class SheltersController < ApplicationController
  def index
    @shelters = Shelter.all
  end

  def new
  end

  def edit
  end

  def show
    @shelter = Shelter.find params[:id]
    # I need to access the shelter id instead of the animal id.
  end
end
