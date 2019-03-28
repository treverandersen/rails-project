class Load < ApplicationRecord
	validates :load_in, presence: true
	validates :load_out, presence: true
end
