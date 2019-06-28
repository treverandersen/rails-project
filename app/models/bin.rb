class Bin < ApplicationRecord
  has_many :tloads
  has_many :drivers, through: :tloads
  has_many :fields, through: :tloads

	validates :name, presence: true
	validates :name, uniqueness: true
	validates :bushel_capacity, presence: true

  def bin_level
    current_level = 0
    self.tloads.each do |load|
      per_cent = load.bushels.to_f / self.bushel_capacity.to_f * 100.0
      if load.in_out == "+ Load In"
        current_level += per_cent.round
      elsif load.in_out == "- Load Out"
        current_level -= per_cent.round
      else
        0
      end
    end
    current_level
  end
end
