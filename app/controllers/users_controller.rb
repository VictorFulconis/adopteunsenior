class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to edit_user_path(@user)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @user.update(user_params)
    @user.save
    redirect_to user_path(@user)
  end

  # def update
  #   respond_to do |format|
  #     if @user.update(user_params)
  #       format.html { redirect_to @user, notice: 'User was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @user }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @user.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /users/1
  # DELETE /restaurants/1.json
  # def destroy
  #   @restaurant.destroy
  #   respond_to do |format|
  #     format.html { redirect_to restaurants_url, notice: 'Restaurant was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
  def user_params
    params.require(:user).permit(:name, :address, :surname, :description, :photo, :birthdate)
  end

  def set_user
    @user  = User.find(params[:id])
  end

end
