class Sprint < ActiveRecord::Base
	belongs_to :sprint
	validates_presence_of :theme
end
