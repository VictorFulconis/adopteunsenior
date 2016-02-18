
class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit, :destroy, :update]
  skip_before_action :authenticate_user!, only: :index

  def index
    @booking = Booking.new
    if params[:search]
      @search = params[:search]
      @users = User.near(params[:search][:address], 20)
      @users_id = []
      @users.each do |user|
        @users_id << user.id
      end
      @activities = Activity.search(params[:search]).where(user_id: @users_id)
    else
      @activities = Activity.all
    end
  end

  def show
    @search = params[:search]
    @booking = Booking.new
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = current_user.activities.new(activity_params)
    if @activity.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @activity.update(activity_params)
      redirect_to activity_path(@activity)
    else
      render :edit
    end
  end

  def destroy
    @activity.delete
    redirect_to user_path(current_user)
  end

  private

  def set_activity
    @activity = Activity.find(params[:id])
  end

  def activity_params
    params.require(:activity).permit(:name, :starting_time, :end_time, :price, :pictogram_link, :description)
  end
end

