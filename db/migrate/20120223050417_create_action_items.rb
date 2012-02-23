class CreateActionItems < ActiveRecord::Migration
  def change
    create_table :action_items do |t|
      t.text :text
      t.integer :sprint_id
      t.string :state

      t.timestamps
    end
  end
end
