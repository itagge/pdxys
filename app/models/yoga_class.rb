class YogaClass < ActiveRecord::Base
  has_many :occurrences
  has_many :yoga_class_instructors
  has_many :instructors, :through => :yoga_class_instructors
  belongs_to :studio
end
