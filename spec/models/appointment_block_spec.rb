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

require 'rails_helper'

RSpec.describe AppointmentBlock, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
