class CreateDestinations < ActiveRecord::Migration[7.0]
  def change
    create_table :destinations do |t|
      t.string :planet
      t.string :image
      t.text :description

      t.timestamps
    end
  end
end
