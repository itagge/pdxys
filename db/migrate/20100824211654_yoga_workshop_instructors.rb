class YogaWorkshopInstructors < ActiveRecord::Migration
  def self.up
    create_table "yoga_workshop_instructors", :force => true do |t|
      t.integer   :yoga_workshop_id
      t.integer   :instructor_id                    
      t.datetime  :created_at
      t.datetime  :updated_at
    end
  end

  def self.down
    drop_table "yoga_workshop_instructors"
  end
end
