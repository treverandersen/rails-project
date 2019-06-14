class Bin < ApplicationRecord
  has_many :tloads
  has_many :drivers, through: :tloads
  has_many :fields, through: :tloads

	validates :name, presence: true
	validates :name, uniqueness: true
	validates :bushel_capacity, presence: true

  def bin_level
   # based off last load the bin level will change 
  end
end
