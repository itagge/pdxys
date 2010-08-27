class YogaWorkshopInstructor < ActiveRecord::Base
  belongs_to :yoga_workshop
  belongs_to :instructor
end
