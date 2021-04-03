class Airplane < ApplicationRecord
  has_many :flight_executions
  validates :model, :total_seats, presence: true

  def total_seats

  end
end
