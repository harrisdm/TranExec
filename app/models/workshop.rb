# == Schema Information
#
# Table name: workshops
#
#  id               :integer          not null, primary key
#  datetime         :datetime         default(Sun, 12 Jul 2015 23:00:00 UTC +00:00)
#  location         :string
#  workshop_type_id :integer
#  project_id       :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Workshop < ActiveRecord::Base
  has_and_belongs_to_many :participants
  has_and_belongs_to_many :users
  belongs_to :workshop_type
  belongs_to :appointment_block
  belongs_to :project
end
