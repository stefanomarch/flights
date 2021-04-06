class FlightExecution < ApplicationRecord
  belongs_to :flight
  belongs_to :airplane
  has_many :bookings
  has_many :passengers, through: :bookings
end
