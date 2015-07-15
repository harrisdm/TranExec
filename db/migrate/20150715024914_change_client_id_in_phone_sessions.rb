class ChangeClientIdInPhoneSessions < ActiveRecord::Migration
  def change
    remove_column :phone_sessions, :client_id
    add_column :phone_sessions, :participant_id, :integer
  end
end
