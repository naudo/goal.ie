class TeamsController < ApplicationController
	before_filter :set_team, only: [:show, :update, :destroy]
	def index
		@teams = Team.all
	end

	def create
		@team = Team.new(params[:team])

		if @team.save
			respond_to do |format|
				format.html {redirect_to root_path, notice: "Your team #{@team.name} has been created!"}
			end
		end
	end

	def show
	end


	protected
	def set_team
		@team = Team.find(params[:id])
	end
end
