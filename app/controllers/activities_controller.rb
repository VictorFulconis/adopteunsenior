
class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit, :destroy, :update]

  def index
    @activities = Activity.all
    @booking = Booking.new
  end

  def show
    @booking = Booking.new
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = current_user.activities.new(activity_params)
    if @activity.save
      redirect_to activity_path(@activity), method: "get"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @activity.update(activity_params)
      redirect_to activity_path(@activity.id), method: "get"
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

