class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :VehicleDevice
      t.string :GpsMeasurement
      t.string :Route
      t.string :RouteCoordinate

      t.timestamps
    end
  end
end
