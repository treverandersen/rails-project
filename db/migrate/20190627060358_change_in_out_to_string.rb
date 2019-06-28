class ChangeInOutToString < ActiveRecord::Migration[5.2]
  def change
    change_column :tloads, :in_out, :string
  end
end
