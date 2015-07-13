# == Schema Information
#
# Table name: appointment_blocks
#
#  id                    :integer          not null, primary key
#  workshop_id           :integer
#  password_digest       :string
#  active                :boolean
#  phone_session_type_id :integer
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

class AppointmentBlock < ActiveRecord::Base
  belongs_to :workshop
  belongs_to :phone_session_type
  has_many :clients, :through => :workshop
end
