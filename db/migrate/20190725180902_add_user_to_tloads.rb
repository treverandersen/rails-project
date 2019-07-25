class AddUserToTloads < ActiveRecord::Migration[5.2]
  def change
    add_column :tloads, :user_id, :integer
  end
end
