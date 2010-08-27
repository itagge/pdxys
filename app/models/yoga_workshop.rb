class YogaWorkshop < ActiveRecord::Base
  has_many :yoga_workshop_instructors
  has_many :instructors, :through => :yoga_workshop_instructors
  belongs_to :studio
end
