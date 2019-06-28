class AddInOutToTloads < ActiveRecord::Migration[5.2]
  def change
    add_column :tloads, :in_out, :string
  end
end
