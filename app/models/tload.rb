class Tload < ApplicationRecord
  belongs_to :user
  belongs_to :driver
  belongs_to :bin
  belongs_to :field
 
	validates :load_full, presence: true
	validates :load_empty, presence: true

  before_validation :net_weight, :wet_bushels, :shrink, :dry_bushels

  scope :incoming_loads, -> { where(in_out: '+ Load In') }

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
