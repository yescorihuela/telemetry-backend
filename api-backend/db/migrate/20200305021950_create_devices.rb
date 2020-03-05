class CreateDevices < ActiveRecord::Migration[5.2]
  def change
    create_table :devices do |t|
      t.string :Vehicle
      t.string :VehicleDevice
      t.string :GpsMeasurement
      t.string :Route
      t.string :RouteCoordinate

      t.timestamps
    end
  end
end
