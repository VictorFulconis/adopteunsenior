class BookingsController < ApplicationController

  def index
    @bookings = current_user.bookings
    @my_activities = current_user.activities
    @my_bookings = Booking.joins(:activity).where("activities.user_id = ?", current_user.id)
 end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path(@bookings)
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to bookings_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.delete
    redirect_to root_path
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :activity_id, :accepted)
  end

end
