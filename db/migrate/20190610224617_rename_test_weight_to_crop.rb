class RenameTestWeightToCrop < ActiveRecord::Migration[5.2]
  def change
    rename_column :loads, :test_weight, :crop
  end
end
