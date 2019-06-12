class AddFieldIndexToLoads < ActiveRecord::Migration[5.2]
  def change
    add_index(:loads, :field)
  end
end
