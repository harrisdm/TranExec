class PhoneSessionType < ActiveRecord::Base
  belongs_to :phone_session
  has_many :appointment_blocks
end
