# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string
#  email           :string
#  password_digest :string
#  name            :string
#  coach           :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  # has_and_belongs_to_many :workshops

  has_many :coaching_sessions
  has_many :workshops, :through => :coaching_sessions
  has_many :phone_sessions
end
