class AppointmentBlock < ActiveRecord::Base
  belongs_to :workshop
  belongs_to :phone_session_type
end
