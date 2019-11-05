class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight][:id])
  end

  def create
  end
end
