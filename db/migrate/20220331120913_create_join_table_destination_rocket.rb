class CreateJoinTableDestinationRocket < ActiveRecord::Migration[7.0]
  def change
    create_join_table :destinations, :rockets do |t|
      t.index [:destination_id, :rocket_id]
      t.index [:rocket_id, :destination_id]
    end
  end
end
