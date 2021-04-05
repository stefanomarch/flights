module Api::V1
  class FlightsController < ApplicationController
    before_action :set_flight, only: [:show]

    def search
      @flights = Flight.global_search(params[:query])
      render json: @flights.to_json
    end

    def index
      @flights = Flight.all
    end

    def show
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
