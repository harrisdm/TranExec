# == Schema Information
#
# Table name: participants
#
#  id         :integer          not null, primary key
#  name       :string
#  project_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Participant < ActiveRecord::Base
  belongs_to :project
  has_and_belongs_to_many :workshops
  has_many :phone_sessions

  belongs_to :appointment
end
