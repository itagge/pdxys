class AddStudioStyle < ActiveRecord::Migration
  def self.up
    add_column :studios, :style, :string
  end

  def self.down
    remove_column :studios, :style
  end
end
