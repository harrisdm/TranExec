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
  
  # validates_uniqueness_of :user_id, :scope => :workshop_id
  validates :user_id, uniqueness: { scope: :workshop_id }
end
