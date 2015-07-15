class CreateAppointmentBlocks < ActiveRecord::Migration
  def change
    create_table :appointment_blocks do |t|
      t.string :name
      t.string :password_digest
      t.integer :phone_session_type_id
      t.boolean :active

      t.timestamps null: false
    end
  end
end
