class CreateGpsMeasurements < ActiveRecord::Migration[5.2]
  def change
    create_table :gps_measurements do |t|
      t.string :Route
      t.string :RouteCoordinate

      t.timestamps
    end
  end
end
