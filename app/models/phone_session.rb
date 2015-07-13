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

class PhoneSession < ActiveRecord::Base
  belongs_to :user
  belongs_to :participant
  belongs_to :phone_session_type
end
