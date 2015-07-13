class CreateCoachingSessions < ActiveRecord::Migration
  def change
    create_table :coaching_sessions do |t|
      t.string :user_id
      t.integer :workshop_id

      t.timestamps null: false
    end
  end
end
