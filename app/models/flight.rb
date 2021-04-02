class Flight < ApplicationRecord
  belongs_to :airplane
  belongs_to :origin_airport_id
  belongs_to :destination_airport_id
end
