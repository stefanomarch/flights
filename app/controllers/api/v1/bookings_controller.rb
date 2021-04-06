module Api::V1
  class BookingsController < ApplicationController
    protect_from_forgery with: :null_session
    acts_as_token_authentication_handler_for User
    before_action :set_booking, only: [:show]

    def index; end

    def create
      @booking = Booking.new
      @booking.user_id = current_user.id
      @flight_execution = FlightExecution.find(params[:id])
      params = passengers_params
      num_passengers = params[:passengers].count
      render_error('enter at least one passenger') if num_passengers.zero?
      render_error('not enough availables seats') if @flight_execution.available_seats < num_passengers
      @booking.flight_execution_id = @flight_execution.id

      if @booking.save!
        params[:passengers].each do |passenger|
          passenger = Passenger.new(passenger)
          passenger.booking = @booking
          if passenger.save
            @booking.increment!(:seats)
            @flight_execution.decrement!(:available_seats)
          end
        end
        render :show, status: :created
      else
        render_error('Booking not complete')
      end
    end

    def show
      if @booking.user_id != current_user.id
        render_error('Not authorize!')
        return
      end
      render :show
    end

    private

    def set_booking
      @booking = Booking.find(params[:id])
    end

    def passengers_params
      params.require(:booking).permit(passengers: [[:first_name, :last_name]])
    end

    def render_error(error)
      render json: { error: error },
      status: :unprocessable_entity
    end
  end
end
