class AddReferenceDestinationIdToTravels < ActiveRecord::Migration[7.0]
  def change
    add_reference :travels, :destination, foreign_key: true
    add_reference :travels, :rocket, foreign_key: true
  end
end
