class AddUserIdToFields < ActiveRecord::Migration[5.2]
  def change
    add_column :fields, :user_id, :integer
  end
end
