class AdminController < ApplicationController
  
  before_filter :admin_login_required
  
  def users
    @users = User.all
  end
  
  def workshops
    @workshops = YogaWorkshop.all
  end
  
  def classes
    @classes = YogaClasses.all
  end
  
  def instructors
    @instructors = Instructors.all
  end
  
  def studios
    @studios = Studio.all
  end
  
end
