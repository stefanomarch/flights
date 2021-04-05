class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :flight_execution, null: false, foreign_key: true
      t.integer :seats , default: 0
      t.boolean :status, default: :false

      t.timestamps
    end
  end
end
