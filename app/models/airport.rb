class Airport < ApplicationRecord
  has_many :airport_to, :class_name => 'Flight', :foreign_key => 'airport_destination_id'
  has_many :airport_from, :class_name => 'Flight', :foreign_key => 'airport_origin_id'
  validates :name, :country, presence: true
end


# Airport.
