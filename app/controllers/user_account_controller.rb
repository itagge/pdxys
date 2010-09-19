class UserAccountController < ApplicationController
  
  def index
    @user = current_user
    @classes = current_user.yoga_classes
  end
  
  def view_workshops
    @workshops = current_user.workshops
  end
  
  def view_classes
    @user = current_user
    @classes = current_user.classes
  end
  
  def view_instructors
    @instructors = current_user.instructors
  end
  
  def view_studios
    @user = current_user
    @studios = current_user.studios
  end  
  
end
