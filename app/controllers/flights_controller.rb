class FlightsController < ApplicationController
  def index
    @airports = Airport.select("DISTINCT code")
    @flights = Flight.pluck(Arel.sql("distinct date(departure_time)")).sort
  end
end
