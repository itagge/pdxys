class Studio < ActiveRecord::Base
  has_many :yoga_classes
  has_many :yoga_workshops
#  has_many :users
  has_many :studio_instructors
  has_many :instructors, :through => :studio_instructors
  belongs_to :user
  
  def self.find_studios
    find(:all, :order => "name")
  end
  
   STYLES = ['Iyengar','Bikram','Jivamukti','Kundalini','Power','Ashtanga','Vinyasa','Hatha','Restorative','Heated','Other'] 
  
end
