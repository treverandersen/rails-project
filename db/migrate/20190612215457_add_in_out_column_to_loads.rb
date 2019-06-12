class AddInOutColumnToLoads < ActiveRecord::Migration[5.2]
  def change
    add_column :loads, :in_out, :boolean, null: false, default: false
  end
end
