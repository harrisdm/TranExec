class CreateWorkshops < ActiveRecord::Migration
  def change
    create_table :workshops do |t|
      t.datetime :datetime, :default => DateTime.now.change({ hour: 9 })
      t.string :location
      t.integer :workshop_type_id
      t.integer :project_id

      t.timestamps null: false
    end
  end
end
