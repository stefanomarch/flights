class CreateFlightExecutions < ActiveRecord::Migration[6.1]
  def change
    create_table :flight_executions do |t|
      t.integer :number
      t.references :flight, null: false, foreign_key: true
      t.datetime :departure_datetime

      t.timestamps
    end
  end
end
