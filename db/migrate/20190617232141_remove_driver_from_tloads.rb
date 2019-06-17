class RemoveDriverFromTloads < ActiveRecord::Migration[5.2]
  def change
    remove_index(:tloads, :name => 'index_loads_on_driver')
  end
end
