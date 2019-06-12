class AddDriverIndexToLoads < ActiveRecord::Migration[5.2]
  def change
    add_index(:loads, :driver)
  end
end
