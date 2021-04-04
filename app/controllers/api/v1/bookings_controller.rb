module Api::V1
  class BookingsController < ApplicationController
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

  end
end
