class Load < ApplicationRecord
  belongs_to :driver
  belongs_to :bin
  belongs_to :field

  validates :driver_id, presence: true
  validates :bin_id, presence: true
  validates :field_id, presence: true
	validates :load_in, presence: true
	validates :load_out, presence: true
  
  def net_weight
    load_in - load_out
  end

  def bushels
     # calculates bushels of load based off net_weight 
    net_weight / 56
  end

end
