class CreatePositives < ActiveRecord::Migration
  def change
    create_table :positives do |t|
      t.text :text
      t.integer :owner_id
      t.integer :sprint_id

      t.timestamps
    end
  end
end
