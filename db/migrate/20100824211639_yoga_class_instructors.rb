class YogaClassInstructors < ActiveRecord::Migration
  def self.up
    create_table "yoga_class_instructors", :force => true do |t|
      t.integer   :yoga_class_id
      t.integer   :instructor_id                    
      t.datetime  :created_at
      t.datetime  :updated_at
    end
  end

  def self.down
    drop_table "yoga_class_instructors"
  end
end
