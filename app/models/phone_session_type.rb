# == Schema Information
#
# Table name: phone_session_types
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PhoneSessionType < ActiveRecord::Base
  belongs_to :phone_session
  has_many :appointment_blocks
end
