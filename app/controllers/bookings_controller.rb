class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
  end

  def show
    @booking = Booking.find(params[:id])
    @markers = [{
    lat: @booking.bathroom.latitude,
    lng: @booking.bathroom.longitude
    }]
  end

  def new
    @bathroom = Bathroom.find(params[:bathroom_id])
    @booking = Booking.new
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to booking_path(@booking)
    else
      render :edit
    end
  end

  def create
    @bathroom = Bathroom.find(params[:bathroom_id])
    @booking = Booking.new(booking_params)
    @booking.bathroom_id = @bathroom.id
    @booking.user_id = current_user.id
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to user_path(current_user.id)
  end

  private

  def booking_params
    params.require(:booking).permit(:bathroom_id, :user_id, :start_time, :end_time)
  end
end
