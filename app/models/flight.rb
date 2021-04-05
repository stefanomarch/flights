class Flight < ApplicationRecord
  # belongs_to :airplane
  belongs_to :airport_destination, class_name: 'Airport'
  belongs_to :airport_origin, class_name: 'Airport'
  has_many :flight_executions

  include PgSearch::Model
  pg_search_scope :global_search,
                  associated_against: {
                    flight_execution: [:departure_date]
                    # flight: [:airport_origin, :airport_destination]
                  },
                  using: {
                    tsearch: { prefix: true }
                  }
end
