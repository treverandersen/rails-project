class CreateFields < ActiveRecord::Migration[5.2]
  def change
    create_table :fields do |t|
      t.string :name
      t.integer :acres
      t.integer :bushel_per_acre

      t.timestamps
    end
  end
end
