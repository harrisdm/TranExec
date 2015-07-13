# == Schema Information
#
# Table name: appointment_blocks
#
#  id                    :integer          not null, primary key
#  workshop_id           :integer
#  active                :boolean
#  phone_session_type_id :integer
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  code                  :string
#

class AppointmentBlock < ActiveRecord::Base
  belongs_to :workshop
  belongs_to :phone_session_type
  has_many :clients, :through => :workshop
end
