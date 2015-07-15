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
  has_many :workshops
  belongs_to :phone_session_type
  has_many :participants, :through => :workshop
  has_many :appointments, :dependent => :destroy
end
