# == Schema Information
#
# Table name: projects
#
#  id         :integer          not null, primary key
#  company    :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Project < ActiveRecord::Base
  has_many :participants
  has_many :workshops
end
