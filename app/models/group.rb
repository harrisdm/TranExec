# == Schema Information
#
# Table name: groups
#
#  id         :integer          not null, primary key
#  company    :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Group < ActiveRecord::Base
  has_many :clients
end
