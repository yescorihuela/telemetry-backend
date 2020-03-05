class CreateVehicleDevices < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_devices do |t|
      t.string :GpsMeasurement
      t.string :Route
      t.string :RouteCoordinate

      t.timestamps
    end
  end
end
