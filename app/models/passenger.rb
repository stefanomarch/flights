class Passenger < ApplicationRecord

  belongs_to :booking
  has_one :flight_execution , through: :booking
end
