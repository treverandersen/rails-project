class TloadsBelongsToFieldId < ActiveRecord::Migration[5.2]
  def change
    add_column :tloads, :field_id, :integer
  end
end
