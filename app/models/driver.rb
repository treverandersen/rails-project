class Driver < ApplicationRecord
  has_many :loads
  has_many :fields, through: :loads
  has_many :bins, through: :loads
  
	validates :name, presence: true
	validates :name, uniqueness: true
end
