class Passenger < ApplicationRecord
  has_many :flights_executions
  belong_to :booking
end
