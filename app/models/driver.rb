class Driver < ApplicationRecord
  has_many :tloads
  has_many :fields, through: :tloads
  has_many :bins, through: :tloads
  
	validates :name, presence: true
	validates :name, uniqueness: true
end
