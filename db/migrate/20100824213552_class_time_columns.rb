class ClassTimeColumns < ActiveRecord::Migration
  def self.up
    add_column :yoga_classes, :start_time, :datetime
    add_column :yoga_classes, :end_time, :datetime
  end

  def self.down
    remove_column :yoga_classes, :end_time
    remove_column :yoga_classes, :start_time
  end
end
