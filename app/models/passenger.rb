class Passenger < ApplicationRecord
  belongs_to :booking
  has_one :flight_execution , through: :booking

  validates :first_name, :last_name, presence: true
end
