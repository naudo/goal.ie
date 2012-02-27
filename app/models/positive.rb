class Positive < ActiveRecord::Base
	belongs_to :sprint
	belongs_to :owner, class_name: "User"
end
