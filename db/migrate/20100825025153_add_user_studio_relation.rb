class AddUserStudioRelation < ActiveRecord::Migration
  def self.up
    add_column :users, :studio_id, :integer
  end

  def self.down
    remove_column :users, :studio_id
  end
end
