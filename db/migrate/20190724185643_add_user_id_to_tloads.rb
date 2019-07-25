class AddUserIdToTloads < ActiveRecord::Migration[5.2]
  def change
    add_index :tloads, :user_id
  end
end
