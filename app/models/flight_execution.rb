class FlightExecution < ApplicationRecord
  belongs_to :flight
  belongs_to :user
  has_many :passengers
end
