# == Schema Information
#
# Table name: workshops
#
#  id                   :integer          not null, primary key
#  datetime             :datetime
#  location             :string
#  workshop_type_id     :integer
#  project_id           :integer
#  appointment_block_id :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

require 'rails_helper'

RSpec.describe Workshop, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
