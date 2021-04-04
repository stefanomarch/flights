module Api::V1
  class FlightsController < ApplicationController
    before_action :set_flight, only: [:show]

    def index
      @flights = Flight.all
      render json: @flights.to_json(
        only: [:id, :airport_destination_id, :airport_origin_id],
        include: {
        airport_destination: {only: [:code, :name, :country]},
        airport_origin: {only: [:code, :name, :country]}
      })
    end

    def show
      render json: @flight.to_json(include: :flight_executions)
    end


  private

    def set_flight
      @flight = Flight.find(params[:id])
    end

    def flight_params
      params.require(:flight).permit(:airport_destination_id, :airport_origin_id)
    end
  end
end
