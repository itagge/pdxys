class StudioInstructors < ActiveRecord::Migration
  def self.up
    create_table "studio_instructors", :force => true do |t|
      t.integer   :studio_id
      t.integer   :instructor_id                    
      t.datetime  :created_at
      t.datetime  :updated_at
    end
  end

  def self.down
    drop_table "studio_instructors"
  end
end
