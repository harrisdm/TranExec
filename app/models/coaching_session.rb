# == Schema Information
#
# Table name: coaching_sessions
#
#  id          :integer          not null, primary key
#  user_id     :string
#  workshop_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class CoachingSession < ActiveRecord::Base

  belongs_to :user
  belongs_to :workshop
  
end
