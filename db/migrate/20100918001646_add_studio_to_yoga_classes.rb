class AddStudioToYogaClasses < ActiveRecord::Migration
  def self.up
    add_column :yoga_classes, :studio, :string
  end

  def self.down
    remove_column :yoga_classes, :studio
  end
end
