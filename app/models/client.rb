# == Schema Information
#
# Table name: clients
#
#  id         :integer          not null, primary key
#  name       :string
#  group_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Client < ActiveRecord::Base
  belongs_to :group
  has_and_belongs_to_many :workshops
  has_many :phone_sessions
end
