class AddPreviousAndNextSprintToSprint < ActiveRecord::Migration
  def change
  	add_column :sprints, :next_sprint_id, :integer
  	add_column :sprints, :previous_sprint_id, :integer
  end
end
