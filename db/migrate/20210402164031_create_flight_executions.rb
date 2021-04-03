class CreateFlightExecutions < ActiveRecord::Migration[6.1]
  def change
    create_table :flight_executions do |t|
      t.integer :number
      t.datetime :departure_datetime
      t.integer :available_seats
      t.references :airplane, null: false, foreign_key: true
      t.references :flight, null: false, foreign_key: true

      t.timestamps
    end
  end
end
