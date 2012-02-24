class AddThemeToSprint < ActiveRecord::Migration
  def change
  	add_column :sprints, :theme, :string
  end
end
