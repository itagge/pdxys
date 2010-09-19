class AddUsrToAll < ActiveRecord::Migration
  def self.up
    add_column :studios, :usr, :integer
    add_column :yoga_classes, :usr, :integer
    add_column :yoga_workshops, :usr, :integer
    add_column :instructors, :usr, :integer
  end

  def self.down
    remove_column :studios, :usr, :integer
    remove_column :yoga_classes, :usr, :integer
    remove_column :yoga_workshops, :usr, :integer
    remove_column :instructors, :usr, :integer
  end
end
