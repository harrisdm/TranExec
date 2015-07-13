# == Schema Information
#
# Table name: phone_sessions
#
#  id                    :integer          not null, primary key
#  client_id             :integer
#  phone_session_type_id :integer
#  phone                 :string
#  reminder              :string
#  email                 :string
#  user_id               :integer
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

require 'rails_helper'

RSpec.describe PhoneSession, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
