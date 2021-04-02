class CreateAirplanes < ActiveRecord::Migration[6.1]
  def change
    create_table :airplanes do |t|
      t.string :company
      t.string :state

      t.timestamps
    end
  end
end
