class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to booking_path(@booking)
    else
      render :show
    end
  end

  def new
    @experience = Experience.find(params[:experience_id])
    @booking = Booking.new
  end

  def create
    @experience = Experience.find(params[:experience_id])
    @booking = Booking.new(booking_params)
    @booking.experience = @experience
    @booking.user = current_user if user_signed_in?
    if @booking.save
      redirect_to bookings_path
    else
      puts @booking.errors.full_messages
      render "experiences/show", status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date_start, :date_end)
  end
end
