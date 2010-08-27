class ChangeInstructorBioColumnType < ActiveRecord::Migration
  def self.up
    change_column :instructors, :bio, :text
  end

  def self.down
    change_column :instructors, :bio, :string
  end
end
