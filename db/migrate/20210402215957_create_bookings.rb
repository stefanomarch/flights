class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :flight_execution, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :seats
      t.jsonb :passengers, foreign_key: true

      t.timestamps
    end
  end
end
