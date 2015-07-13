class AddParticipantsWorkshopsTable < ActiveRecord::Migration
  def change
    create_table :participants_workshops, id: false do |t|
      t.integer :participant_id
      t.integer :workshop_id
    end

    add_index :participants_workshops, :participant_id
    add_index :participants_workshops, :workshop_id
  end
end
