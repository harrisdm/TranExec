class WorkshopType < ActiveRecord::Base
  belongs_to_many :workshops
end
