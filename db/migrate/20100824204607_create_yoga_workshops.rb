class CreateYogaWorkshops < ActiveRecord::Migration
  def self.up
    create_table :yoga_workshops do |t|
      t.integer :studio_id
      t.text :description
      t.datetime :end_date
      t.datetime :start_date
      t.string :level

      t.timestamps
    end
  end

  def self.down
    drop_table :yoga_workshops
  end
end
