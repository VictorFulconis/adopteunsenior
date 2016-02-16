class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  def index
    @users = User.all
  end

  def show
    @user  = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to users_path(@users)
  end

  def update
  @user.update(user_params)
  redirect_to user_path(@user)
  end

  private
  def user_params
    params.require(:user).permit(:name, :address, :surname, :description, :photo_link, :birthdate)
  end

  def set_user
  @user  = User.find(params[:id])
  end

end
