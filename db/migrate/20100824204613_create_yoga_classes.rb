class CreateYogaClasses < ActiveRecord::Migration
  def self.up
    create_table :yoga_classes do |t|
      t.string :name
      t.string :level
      t.text :description
      t.string :type_of
      t.integer :studio_id

      t.timestamps
    end
  end

  def self.down
    drop_table :yoga_classes
  end
end
