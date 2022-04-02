class ChangeImageToText < ActiveRecord::Migration[7.0]
  def change
    change_column :destinations, :image, :text
  end
end
