class Load < ApplicationRecord
  belongs_to :driver
  belongs_to :bin
  belongs_to :field

	validates :load_in, presence: true
	validates :load_out, presence: true

  def bushels
    
  end
end
