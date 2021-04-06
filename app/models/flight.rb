class Flight < ApplicationRecord
  # belongs_to :airplane
  belongs_to :airport_destination, class_name: 'Airport'
  belongs_to :airport_origin, class_name: 'Airport'
  has_many :flight_executions

  include PgSearch::Model
  pg_search_scope :search_by_origin_or_destination,
                  associated_against: {
                    airport_destination: [:name, :country],
                    airport_origin: [:name, :country]},
                  using: {
                    tsearch: { prefix: true }
                  }
  end
