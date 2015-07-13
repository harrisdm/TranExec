class PhoneSession < ActiveRecord::Base
  belongs_to :user
  belongs_to :client
  belongs_to :phone_session_type
end
