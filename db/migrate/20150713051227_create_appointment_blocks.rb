class CreateAppointmentBlocks < ActiveRecord::Migration
  def change
    create_table :appointment_blocks do |t|
      t.integer :workshop_id
      t.string :password_digest
      t.boolean :active
      t.integer :phone_session_type_id

      t.timestamps null: false
    end
  end
end
