class CreateSprints < ActiveRecord::Migration
  def change
    create_table :sprints do |t|
      t.integer :length
      t.integer :team_id
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
