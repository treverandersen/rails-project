class AddWetBushelsToTloads < ActiveRecord::Migration[5.2]
  def change
    add_column :tloads, :wet_bushels, :integer
  end
end
