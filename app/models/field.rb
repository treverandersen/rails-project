class Field < ApplicationRecord
  belongs_to :user
  has_many :tloads

	validates :name, presence: true
	validates :name, uniqueness: true
	validates :acres, presence: true
end
