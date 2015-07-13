class CreatePhoneSessions < ActiveRecord::Migration
  def change
    create_table :phone_sessions do |t|
      t.integer :client_id
      t.integer :phone_session_type_id
      t.string :phone
      t.string :reminder
      t.string :email
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
