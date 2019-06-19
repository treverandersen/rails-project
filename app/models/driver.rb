class Driver < ApplicationRecord
  has_many :tloads
  
	validates :name, presence: true
	validates :name, uniqueness: true
end
