class CreateAirplanes < ActiveRecord::Migration[6.1]
  def change
    create_table :airplanes do |t|
      t.string :model
      t.integer :total_seats

      t.timestamps
    end
  end
end
