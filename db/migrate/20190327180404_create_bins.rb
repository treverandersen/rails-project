class CreateBins < ActiveRecord::Migration[5.2]
  def change
    create_table :bins do |t|
      t.string :name
      t.integer :bushel_capacity
      t.integer :level
      t.integer :load_in
      t.integer :load_out

      t.timestamps
    end
  end
end
