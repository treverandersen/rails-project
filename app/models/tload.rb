class Tload < ApplicationRecord
  belongs_to :driver
  belongs_to :bin
  belongs_to :field
 
	validates :load_full, presence: true
	validates :load_empty, presence: true

  before_validation :net_weight, :bushels
  
  private

  def net_weight
    self.net_weight = self.load_full - self.load_empty
  end

  def bushels
    crop == crop[0] ? crop = 56 : crop = 60
    self.bushels = net_weight / crop
  end

end
