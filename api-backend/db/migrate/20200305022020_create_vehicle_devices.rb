class CreateVehicleDevices < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_devices do |t|
      t.references :vehicle
      t.references :device
      t.timestamps
    end
  end
end
