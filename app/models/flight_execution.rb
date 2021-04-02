class FlightExecution < ApplicationRecord
  belongs_to :flight_id
  belongs_to :user_id
  belongs_to :passenger_id
end
