class Evening < ApplicationRecord
	belongs_to :host, :class_name => 'User', :foreign_key => 'host_id'
	has_many :guests, :through => :participations
	belongs_to :city
	belongs_to :witness
	belongs_to :language
	belongs_to :concept
end
