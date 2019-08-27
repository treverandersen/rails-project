class Field < ApplicationRecord
  belongs_to :user
  has_many :tloads

	validates :name, presence: true
	validates :name, uniqueness: true
	validates :acres, presence: true

  scope :total_dry_bushels, -> (id) { where(id: id).joins(:tloads).pluck(:dry_bushels).sum }
  scope :total_wet_bushels, -> (id) { where(id: id).joins(:tloads).pluck(:wet_bushels).sum }
  scope :all_fields_for_bin, -> (bin_id) { Field.all.joins(:tloads).where('bin_id = ?', bin_id) }
  
end
