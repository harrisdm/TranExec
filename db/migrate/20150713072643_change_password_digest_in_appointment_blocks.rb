class ChangePasswordDigestInAppointmentBlocks < ActiveRecord::Migration
  def change
    remove_column :appointment_blocks, :password_digest
    add_column :appointment_blocks, :code, :string
  end
end
