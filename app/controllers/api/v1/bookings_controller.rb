module Api::V1
  class BookingsController < ApplicationController
    before_action :authenticate_user!

    def create
      @booking = Booking.new
      @booking.flight_execution = FlightExecution.find(params[:flight_execution_id])
      @booking.user = current_user
      @booking.status = false

      if @Booking.save
        render :show, status: :created
      else
        render_error
      end
    end

    def show
    end

  end
end
