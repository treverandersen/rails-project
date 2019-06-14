class Field < ApplicationRecord
  has_many :tloads
  has_many :drivers, through: :tloads
  has_many :bins, through: :tloads

	validates :name, presence: true
	validates :name, uniqueness: true
	validates :acres, presence: true
end
