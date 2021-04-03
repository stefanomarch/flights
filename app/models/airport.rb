class Airport < ApplicationRecord
  has_many :from_airports, :class_name => 'Flight', :foreign_key => 'from_airport_id'
  has_many :to_airports, :class_name => 'Flight', :foreign_key => 'to_airport_id'
end
