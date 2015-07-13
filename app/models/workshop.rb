class Workshop < ActiveRecord::Base
  has_and_belongs_to_many :clients
  has_and_belongs_to_many :users
  belongs_to :workshop_type
  belongs_to :appointment_block
end
