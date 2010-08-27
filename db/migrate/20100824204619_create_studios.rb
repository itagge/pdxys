class CreateStudios < ActiveRecord::Migration
  def self.up
    create_table :studios do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip_code
      t.text :description
      t.string :phone
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :studios
  end
end
