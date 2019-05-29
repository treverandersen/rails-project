class Driver < ApplicationRecord
  has_and_belongs_to_many :loads

	validates :name, presence: true
	validates :name, uniqueness: true
end
