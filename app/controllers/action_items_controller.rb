class ActionItemsController < ApplicationController
	before_filter :set_team
	before_filter :set_sprint



	protected 
	def set_team
		@team = Team.find(params[:team_id])
	end

	def set_sprint
		@sprint = Sprint.find(params[:sprint_id])
	end
end
