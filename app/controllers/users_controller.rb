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
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    # @user = User.find params[:id]
  end

  def update                                                  #user used to be @user
    user = User.find params[:id]
    if params[:file].present?                                 #this line is new
      res = Cloudinary::Uploader.upload(params[:file])        #this line is new
      user.image = res["public_id"]                           #this line is new
    end                                                       #this line is new
    user.save user_params                                   #update_attributes?
    redirect_to root_path
  end


  private
  def user_params                                       #this function used to include :image
    params.require(:user).permit(:email, :password, :password_confirmation, :name, :has_backyard, :backyard_image, :about, :has_pets, :pet_number, :pet_type)
  end
end
