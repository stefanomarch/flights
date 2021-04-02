class CreateAirplanes < ActiveRecord::Migration[6.1]
  def change
    create_table :airplanes do |t|
      t.string :model
      t.string :company
      t.integer :rows
      t.integer :columns
      t.integer :avilables_seats

      t.timestamps
    end
  end
end
