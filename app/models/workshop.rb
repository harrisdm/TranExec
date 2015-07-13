# == Schema Information
#
# Table name: workshops
#
#  id               :integer          not null, primary key
#  datetime         :datetime
#  location         :string
#  workshop_type_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Workshop < ActiveRecord::Base
  has_and_belongs_to_many :clients
  has_and_belongs_to_many :users
  belongs_to :workshop_type
  belongs_to :appointment_block
end
