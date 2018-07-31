class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @bathroom = Bathroom.find(params[:bathroom_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @bathroom = @booking.bathroom
    if @booking.save
      redirect_to @bathroom
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:bathroom_id, :user_id, :start_time, :end_time)
  end
end
