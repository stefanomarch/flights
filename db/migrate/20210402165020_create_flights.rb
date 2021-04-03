class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.references :airplane, null: false, foreign_key: true
      t.references :origin, null: false
      t.references :destination, null: false

      t.timestamps
    end
  end
end
