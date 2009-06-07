class CreateAmbulances < ActiveRecord::Migration
  def self.up
    create_table :ambulances do |t|
      t.string :driverName

      t.timestamps
    end
  end

  def self.down
    drop_table :ambulances
  end
end
