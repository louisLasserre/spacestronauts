class RemoveDestinationIdFromTravels < ActiveRecord::Migration[7.0]
  def change
    remove_column :travels, :destination_id, :integer
    remove_column :travels, :rockets_id, :integer
  end
end
