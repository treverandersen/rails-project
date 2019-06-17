class TloadsBelongsToDriver < ActiveRecord::Migration[5.2]
  def change
    add_index(:tloads, :driver)
  end
end
