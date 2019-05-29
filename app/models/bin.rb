class Bin < ApplicationRecord
  has_many :loads
  has_many :drivers, through: :loads
  has_many :fields, through: :loads

	validates :name, presence: true
	validates :name, uniqueness: true
	validates :bushel_capacity, presence: true
end
