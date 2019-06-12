class AddBinIndexToLoads < ActiveRecord::Migration[5.2]
  def change
    add_index(:loads, :bin)
  end
end
