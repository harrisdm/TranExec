# == Schema Information
#
# Table name: workshops
#
#  id               :integer          not null, primary key
#  datetime         :datetime
#  location         :string
#  workshop_type_id :integer
#  project_id       :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Workshop < ActiveRecord::Base
  has_and_belongs_to_many :participants
  # has_and_belongs_to_many :users
  belongs_to :workshop_type
  belongs_to :appointment_block
  belongs_to :project

  has_many :coaching_sessions
  has_many :users, :through => :coaching_sessions
  accepts_nested_attributes_for :coaching_sessions, 
      :reject_if => lambda { |a| a[:user_id].blank? }, 
      :allow_destroy => true
end
