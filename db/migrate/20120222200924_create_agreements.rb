class CreateAgreements < ActiveRecord::Migration
  def change
    create_table :agreements do |t|
      t.text :text

      t.timestamps
    end
  end
end
