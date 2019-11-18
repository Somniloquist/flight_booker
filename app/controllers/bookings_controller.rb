class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @flight = Flight.find(params[:flight][:id])
    @passengers = params[:flight][:passengers].to_i
  end

  def create
    flight = Flight.find(params[:flight][:id])
    booking = flight.bookings.build(booking_params)
    if booking.save
      passengers = booking.passengers
      passengers.each do |passenger|
        PassengerMailer.with(passenger: passenger).booking_confirmation_email.deliver_now
      end
      redirect_to booking_path(booking)
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private
  def booking_params
    params.require(:booking).permit(:passengers_attributes => [:name, :email])
  end
end
