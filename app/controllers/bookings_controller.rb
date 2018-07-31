class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @bathroom = Bathroom.find(params[:bathroom_id])
    @user = User.find(params[:user_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @bathroom = @booking.bathroom
    @user = @booking.user
    if @booking.save
      redirect_to booking_path(params[:booking_id])
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to user_path(params[:user_id])
  end

  private

  def booking_params
    params.require(:booking).permit(:bathroom_id, :user_id, :start_time, :end_time)
  end
end
