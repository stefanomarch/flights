class Booking < ApplicationRecord
  belongs_to :flight
  belongs_to :flight_execution
  belongs_to :user
  has_many :passengers
end
