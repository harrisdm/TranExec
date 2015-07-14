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

  validates :company, presence: true
  validates :company, length: { maximum: 100 }

  validates :name, presence: true
  validates :name, length: { maximum: 200 }
  
end
