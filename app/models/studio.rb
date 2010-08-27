class Studio < ActiveRecord::Base
  has_many :yoga_classes
  has_many :yoga_workshops
  has_many :users
  has_many :studio_instructors
  has_many :instructors, :through => :studio_instructors
end
