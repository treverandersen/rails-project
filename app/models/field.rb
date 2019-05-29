class Field < ApplicationRecord
  has_many :loads
  has_many :drivers, through: :loads
  has_many :bins, through: :loads

	validates :name, presence: true
	validates :name, uniqueness: true
	validates :acres, presence: true
end
