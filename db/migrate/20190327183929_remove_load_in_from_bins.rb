class RemoveLoadInFromBins < ActiveRecord::Migration[5.2]
  def change
    remove_column :bins, :load_in, :integer
  end
end
