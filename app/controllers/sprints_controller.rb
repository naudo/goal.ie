class SprintsController < ApplicationController
	before_filter :set_team
	before_filter :set_sprint, only: [:show, :update, :destroy]

	def index
	end

	def show
	end

	def create
		@sprint = @team.sprints.build(params[:sprint])

		if @sprint.save
			respond_to do |format|
				format.html { redirect_to team_path(@team), notice: "Sprint has been created" }
			end
		end
	end


	protected
	def set_team
		@team = Team.find(params[:team_id])
	end

	def set_sprint
		@sprint = @team.sprints.find(params[:id])
	end
end
