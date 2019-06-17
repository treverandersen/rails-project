class TloadsBelongsToBin < ActiveRecord::Migration[5.2]
  def change
    add_index(:tloads, :bin)
  end
end
