class SprintsController < ApplicationController
	before_filter :set_team
	before_filter :set_sprint, only: [:show, :update, :destroy]

	def index
	end

	def show
	end

	def create
		@sprint = Sprint.new(params[:id])

		if @sprint.save
			respond_to do |format|
				format.html { redirect_to team_sprint_path(@team, @sprint), notice: "Sprint has been created" }
			end
		end
	end


	protected
	def set_team
		@team = Team.find(params[:team_id])
	end

	def set_sprint
		@sprint = Sprint.find(params[:id])
	end
end
