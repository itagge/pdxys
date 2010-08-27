class StudioInstructor < ActiveRecord::Base
  belongs_to :studio
  belongs_to :instructor
end