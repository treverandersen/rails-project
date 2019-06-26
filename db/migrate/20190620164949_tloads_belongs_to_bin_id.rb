class TloadsBelongsToBinId < ActiveRecord::Migration[5.2]
  def change
    add_column :tloads, :bin_id, :integer
  end
end
