class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :license_plate, unique: true
      t.references :driver
      t.integer :total_seats
      t.timestamps
    end
  end
end
