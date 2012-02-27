class Sprint < ActiveRecord::Base
	# belongs_to :sprint
	has_many :action_items
	has_many :negatives
	has_many :positives

	has_one :next_sprint, class_name: "Sprint", :foreign_key => :next_sprint_id
	has_one :previous_sprint, class_name: "Sprint", :foreign_key => :previous_sprint_id
	#validates_presence_of :theme #, :previous_sprint

	accepts_nested_attributes_for :action_items, :negatives, :positives


	def previous_sprint_items
		previous_sprint.present? ? previous_sprint.action_items : []
	end
end
