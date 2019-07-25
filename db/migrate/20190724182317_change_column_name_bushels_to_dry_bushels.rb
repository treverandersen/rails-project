class ChangeColumnNameBushelsToDryBushels < ActiveRecord::Migration[5.2]
  def change
    rename_column :tloads, :bushels, :dry_bushels
  end
end
