class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :appointment_block_id
      t.integer :participant_id
      t.datetime :datetime
      t.string :phone
      t.string :email
      t.string :reminder

      t.timestamps null: false
    end
  end
end
