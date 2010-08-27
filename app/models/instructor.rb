class Instructor < ActiveRecord::Base
  has_many :yoga_class_instructors
  has_many :yoga_classes, :through => :yoga_class_instructors
  has_many :yoga_workshop_instructors
  has_many :yoga_workshops, :through => :yoga_workshop_instructors
  has_many :studio_instructors
  has_many :studios, :through => :studio_instructors
end
