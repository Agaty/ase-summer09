class CreateIncidents < ActiveRecord::Migration
  def self.up
    create_table :incidents do |t|
      t.string :location
      t.integer :severity
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :incidents
  end
end
