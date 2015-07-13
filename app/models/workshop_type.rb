# == Schema Information
#
# Table name: workshop_types
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class WorkshopType < ActiveRecord::Base
  belongs_to :workshop
end
