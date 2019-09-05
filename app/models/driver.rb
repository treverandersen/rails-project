class Driver < ApplicationRecord
  belongs_to :user
  has_many :tloads
  
	validates :name, presence: true
	validates :name, :uniqueness => { :scope => :user_id }

  scope :all_drivers_for_bin, -> (bin_id) { Driver.all.joins(:tloads).where('bin_id = ?', bin_id) }
  scope :all_drivers_for_field, -> (field_id) { Field.all.joins(:tloads).where('field_id = ?', field_id) }
end
