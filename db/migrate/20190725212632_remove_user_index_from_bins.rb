class RemoveUserIndexFromBins < ActiveRecord::Migration[5.2]
  def change
    remove_index :bins, name: 'index_bins_on_user_id' 
  end
end
