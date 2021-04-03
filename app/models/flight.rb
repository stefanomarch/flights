class Flight < ApplicationRecord
  belongs_to :airplane
  belongs_to :from_airport, class_name: 'Airport'
  belongs_to :to_airport, class_name: 'Airport'
  has_many :flight_executions
end
