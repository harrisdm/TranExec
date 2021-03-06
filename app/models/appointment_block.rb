# == Schema Information
#
# Table name: appointment_blocks
#
#  id                    :integer          not null, primary key
#  name                  :string
#  phone_session_type_id :integer
#  active                :boolean
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  code                  :string
#

class AppointmentBlock < ActiveRecord::Base
  has_many :workshops
  belongs_to :phone_session_type
  has_many :participants, :through => :workshops
  has_many :appointments, -> { order 'datetime asc' }, :dependent => :destroy

end
