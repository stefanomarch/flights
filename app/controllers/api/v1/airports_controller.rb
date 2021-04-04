module Api::V1
  class AirportsController < ApplicationController
    before_action :set_airport, only: [:show]
    def index
      @airports = Airport.all
      render json: @airports
    end

     def show
      render json: @airport
    end
  end




  private

    def set_airport
      @airport = Airport.find(params[:id])
    end

    def airport_params
      params.require(:airport).permit(:code, :name, :state)
    end
end
