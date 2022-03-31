class CreateTravels < ActiveRecord::Migration[7.0]
  def change
    create_table :travels do |t|
      t.integer :destination_id
      t.integer :rockets_id
      t.date :date
      t.float :price

      t.timestamps
    end
  end
end
