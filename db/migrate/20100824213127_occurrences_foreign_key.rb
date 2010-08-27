class OccurrencesForeignKey < ActiveRecord::Migration
  def self.up
    add_column :occurrences, :yoga_class_id, :integer
  end

  def self.down
    remove_column :occurrences, :yoga_class_id
  end
end
