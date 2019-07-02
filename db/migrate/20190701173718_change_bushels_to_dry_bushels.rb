class ChangeBushelsToDryBushels < ActiveRecord::Migration[5.2]
  def up
    change_table :tloads do |t|
      t.change :bushels, :integer
    end
  end

  def down
    change_table :tloads do |t|
      t.change :bushels, :float
    end
  end
end
