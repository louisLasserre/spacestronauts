class CreateRockets < ActiveRecord::Migration[7.0]
  def change
    create_table :rockets do |t|
      t.string :name
      t.references :company, null: false, foreign_key: true
      t.text :image

      t.timestamps
    end
  end
end
