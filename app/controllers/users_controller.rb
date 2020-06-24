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
      redirect_to user_path(@user.id)
    else
      render :new       #is this my problem?
    end
  end

  def edit
    @user = User.find params[:id]
  end

  def show
    @user = User.find params[:id]
  end

  def update
    @user = User.find params[:id]
    if params[:file].present?
      res = Cloudinary::Uploader.upload(params[:file])
      @user.image = res["public_id"]
    end
    if params[:user][:backyard_images].present?
      params[:user][:backyard_images].each do |image|
        res = Cloudinary::Uploader.upload(image)
        @user.backyard_images << res["public_id"]
      end
    end
    @user.update user_params
    redirect_to user_path(@user.id)
  end


  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :name, :has_backyard, :backyard_image, :about, :has_pets, :pet_number, :pet_type)
  end
end
