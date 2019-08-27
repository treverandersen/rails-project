class Driver < ApplicationRecord
  has_many :tloads
  
	validates :name, presence: true
	validates :name, uniqueness: true

  scope :all_drivers_for_bin, -> (bin_id) { Driver.all.joins(:tloads).where('bin_id = ?', bin_id) }

end
