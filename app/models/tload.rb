class Tload < ApplicationRecord
  belongs_to :user
  belongs_to :driver
  belongs_to :bin
  belongs_to :field
 
  accepts_nested_attributes_for :bin, reject_if: proc { |attributes| attributes['name'].blank? } 
  accepts_nested_attributes_for :field, reject_if: proc { |attributes| attributes['name'].blank? }
  accepts_nested_attributes_for :driver, reject_if: proc { |attributes| attributes['name'].blank? }

	validates :load_full, presence: true
	validates :load_empty, presence: true

  before_validation :net_weight, :wet_bushels, :shrink, :dry_bushels

  scope :all_loads_for_bin, -> (bin_id) { Tload.all.where('bin_id = ?', bin_id) }
  scope :all_loads_for_driver, -> (driver_id) { Tload.all.where('driver_id = ?', driver_id) }
  scope :all_loads_for_field, -> (field_id) { Tload.all.where('field_id = ?', field_id) }

  def net_weight
    self.net_weight = self.load_full - self.load_empty
  end

  def wet_bushels
    crop == "Corn" ? crop = 56 : crop = 60
    self.wet_bushels = net_weight / crop
  end

  def shrink
    if self.moisture > 15
      shrink = (self.moisture - 15) * 0.01176
      shrink = shrink * wet_bushels
      shrink = shrink.round
    else
      shrink = 0
    end
  end

  def dry_bushels
    self.dry_bushels = wet_bushels - shrink 
  end

end
