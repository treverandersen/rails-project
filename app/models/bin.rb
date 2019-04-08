class Bin < ApplicationRecord
	validates :name, presence: true
	validates :name, uniqueness: true
	validates :bushel_capacity, presence: true
end
