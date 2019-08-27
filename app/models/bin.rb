class Bin < ApplicationRecord
  belongs_to :user
  has_many :tloads
  has_many :drivers, through: :tloads
  has_many :fields, through: :tloads

	validates :name, presence: true
	validates :bushel_capacity, presence: true

  scope :total_dry_bushels, -> (id) { where(id: id).joins(:tloads).pluck(:dry_bushels).sum }
  scope :total_wet_bushels, -> (id) { where(id: id).joins(:tloads).pluck(:wet_bushels).sum }
end
