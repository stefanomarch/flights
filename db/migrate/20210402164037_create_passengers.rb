class CreatePassengers < ActiveRecord::Migration[6.1]
  def change
    create_table :passengers do |t|
      t.references :booking, null: false, foreign_key: true
      t.string :first_name
      t.string :last_name


      t.timestamps
    end
  end
end
