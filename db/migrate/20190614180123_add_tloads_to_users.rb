class AddTloadsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_index(:users, :tloads)
  end
end
