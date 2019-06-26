class TloadsBelongsToDriverId < ActiveRecord::Migration[5.2]
  def change
    add_column :tloads, :driver_id, :integer
  end
end
