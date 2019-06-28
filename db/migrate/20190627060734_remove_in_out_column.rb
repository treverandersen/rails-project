class RemoveInOutColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :tloads, :in_out
  end
end
