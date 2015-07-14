# == Schema Information
#
# Table name: appointments
#
#  id                   :integer          not null, primary key
#  appointment_block_id :integer
#  participant_id       :integer
#  datetime             :datetime
#  phone                :string
#  email                :string
#  reminder             :string
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class Appointment < ActiveRecord::Base
  belongs_to :appointment_block
end
