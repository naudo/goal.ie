class SprintsController < ApplicationController
	before_filter :set_team
	before_filter :set_sprint, only: [:show, :edit, :update, :destroy]

	def index
	end

	def show
	end

	def create
		# automagically set the next sprint / previous sprint settings that we know.
		@previous_sprint = @team.sprints.last
		@sprint = @team.sprints.build(params[:sprint])

		if @team.sprints.count >= 1
			@sprint.previous_sprint = @previous_sprint
			@previous_sprint.next_sprint = @sprint 
			@previous_sprint.save
		end

		if @sprint.save
			respond_to do |format|
				format.html { redirect_to team_path(@team), notice: "Sprint has been created" }
			end
		end
	end

	def edit
	end
	
	def update
		@sprint.update_attributes(params[:sprint])

		if @sprint.save
			respond_to do |format|
				format.html { redirect_to([@team, @sprint], notice: "Your sprint has been updated") }
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
