class CreateCoachingSessions < ActiveRecord::Migration
  def change
    create_table :coaching_sessions do |t|
      t.string :user_id
      t.integer :workshop_id

      t.timestamps null: false
    end
    add_index :coaching_sessions, [:user_id, :workshop_id], :unique => true
  end
end
