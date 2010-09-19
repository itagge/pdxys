class ChangeUsrColumnName < ActiveRecord::Migration
    def self.up
      rename_column :studios, :usr, :user_id
      rename_column :yoga_classes, :usr, :user_id
      rename_column :yoga_workshops, :usr, :user_id
      rename_column :instructors, :usr, :user_id
    end

    def self.down
      remove_column :studios, :user_id, :usr
      remove_column :yoga_classes, :user_id, :usr
      remove_column :yoga_workshops, :user_id, :usr
      remove_column :instructors, :user_id, :usr
    end
  end