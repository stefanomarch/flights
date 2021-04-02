class CreateAirports < ActiveRecord::Migration[6.1]
  def change
    create_table :airports do |t|
      t.string :city
      t.string :name

      t.timestamps
    end
  end
end
