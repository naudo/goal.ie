class CreateAgreements < ActiveRecord::Migration
  def change
    create_table :agreements do |t|
      t.text :text
      t.integer :team_id
      t.timestamps
    end
  end
end
