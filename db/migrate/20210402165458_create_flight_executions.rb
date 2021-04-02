class CreateFlightExecutions < ActiveRecord::Migration[6.1]
  def change
    create_table :flight_executions do |t|
      t.references :flight_id, null: false, foreign_key: true
      t.references :user_id, null: false, foreign_key: true
      t.timestamp :date_of_execution
      t.references :passenger_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
