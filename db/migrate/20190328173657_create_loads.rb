class CreateLoads < ActiveRecord::Migration[5.2]
  def change
    create_table :loads do |t|
      t.integer :load_in
      t.integer :load_out
      t.integer :net_weight
      t.integer :test_weight
      t.decimal :moisture
      t.integer :bushels

      t.timestamps
    end
  end
end
