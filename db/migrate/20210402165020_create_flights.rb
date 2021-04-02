class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.integer :number
      t.references :airplane, null: false, foreign_key: true
      t.references :origin_airport, null: false, foreign_key: true
      t.references :destination_airport, null: false, foreign_key: true
      t.string :duration
      t.datetime :departure_datetime
      t.integer :capacity
      t.integer :avilables_seats

      t.timestamps
    end
  end
end
