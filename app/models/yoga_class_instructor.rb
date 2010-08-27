class YogaClassInstructor < ActiveRecord::Base
  belongs_to :yoga_class
  belongs_to :instructor
end