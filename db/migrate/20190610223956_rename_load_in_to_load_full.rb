class RenameLoadInToLoadFull < ActiveRecord::Migration[5.2]
  def change
    rename_column :loads, :load_in, :load_full
  end
end
