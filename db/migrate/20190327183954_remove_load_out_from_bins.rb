class RemoveLoadOutFromBins < ActiveRecord::Migration[5.2]
  def change
    remove_column :bins, :load_out, :integer
  end
end
