class TloadsBelongsToUser < ActiveRecord::Migration[5.2]
  def change
    add_index(:tloads, :user)
  end
end
