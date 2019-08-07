class Bin < ApplicationRecord
  belongs_to :user
  has_many :tloads
  has_many :drivers, through: :tloads
  has_many :fields, through: :tloads

	validates :name, presence: true
	validates :bushel_capacity, presence: true

end
