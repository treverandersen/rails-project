class RemoveDriverIdFromTloads < ActiveRecord::Migration[5.2]
  def change
    remove_index(:tloads, :name => 'index_tloads_on_driver')
  end
end
