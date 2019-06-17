class TloadsBelongsToField < ActiveRecord::Migration[5.2]
  def change
    add_index(:tloads, :field)
  end
end
