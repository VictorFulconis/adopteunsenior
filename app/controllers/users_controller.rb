class UsersController < ApplicationController
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

  private
  def user_params
    params.require(:user).permit(:name, :address, :category, :reviews)
  end

  def set_user
  @user  = User.find(params[:id])
  end

end
