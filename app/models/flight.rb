class Flight < ApplicationRecord
  belongs_to :airplane
  belongs_to :origin_airport
  belongs_to :destination_airport
  has_many :flight_executions
  has_many :passengers , through: :flight_execution
end
