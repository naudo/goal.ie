class Team < ActiveRecord::Base
	has_many :agreements

	has_many :sprints
	has_many :team_users
	has_many :users, :through => :team_users

	accepts_nested_attributes_for :agreements
end
