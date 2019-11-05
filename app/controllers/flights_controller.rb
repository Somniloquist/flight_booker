class FlightsController < ApplicationController

  def index
    @airports = Airport.all
    @flight_dates = Flight.pluck(Arel.sql("distinct date(departure_time)")).sort

    unless params[:flight].nil?
      @flights = Flight.where("start_airport_id = :from_id AND 
                              finish_airport_id = :to_id AND 
                              departure_time LIKE :date",
                              from_id: params[:flight][:from_id],
                              to_id: params[:flight][:to_id],
                              date: "%#{params[:flight][:date]}%")
    end
  end

end

