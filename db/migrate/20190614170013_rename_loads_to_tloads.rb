class RenameLoadsToTloads < ActiveRecord::Migration[5.2]
  def self.up
    rename_table :loads, :tloads
  end

  def self.down
    rename_table :tloads, :loads
  end
end
