class CreateVehicleRoutes < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_routes do |t|
      t.references :vehicle
      t.references :route
      t.timestamps
    end
  end
end
