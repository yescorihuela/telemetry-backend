class CreateVehicleDevices < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_devices do |t|
      t.belongs_to :device
      t.belongs_to :vehicle
      t.timestamps
    end
  end
end
