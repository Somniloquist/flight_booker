class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @flight = Flight.find(params[:flight][:id])
    @passengers = params[:flight][:passengers].to_i
  end

  def create

  end
end
