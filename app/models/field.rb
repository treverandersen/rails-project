class Field < ApplicationRecord
	validates :name, presence: true
	validates :name, uniqueness: true
	validates :acres, presence: true
end
