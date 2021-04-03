class Passenger < ApplicationRecord
  has_many :flights
  belong_to :booking
end
