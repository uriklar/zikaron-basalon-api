class Witness < ApplicationRecord
	has_many :evenings
	belongs_to :language
	belongs_to :concept
end
