class Flight < ApplicationRecord
  # belongs_to :airplane
  belongs_to :airport_destination, class_name: 'Airport'
  belongs_to :airport_origin, class_name: 'Airport'
  has_many :flight_executions
end
