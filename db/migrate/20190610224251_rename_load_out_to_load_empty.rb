class RenameLoadOutToLoadEmpty < ActiveRecord::Migration[5.2]
  def change
    rename_column :loads, :load_out, :load_empty
  end
end
