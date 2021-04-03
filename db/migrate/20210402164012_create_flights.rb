class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.references :airport_destination
      t.references :airport_origin

      t.timestamps
    end
    add_foreign_key :flights, :airports, column: :airport_destination_id, primary_key: :id
    add_foreign_key :flights, :airports, column: :airport_origin_id, primary_key: :id
  end
end
