class UsersController < ApplicationController
  # before_action :check_for_admin, :only => [:index]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      session[:user_id] = @user.id  # I think the line of code goes here
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    # @user = User.find params[:id]
  end

  def update
    @user = User.find params[:id]
    @user.update user_params
    redirect_to root_path
  end


  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :name, :image, :has_backyard, :backyard_image, :about, :has_pets, :pet_number, :pet_type)
  end
end
