class ChangeCropFromIntToString < ActiveRecord::Migration[5.2]
  def change
    change_column :tloads, :crop, :string
  end
end
