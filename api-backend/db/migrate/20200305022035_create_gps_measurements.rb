class CreateGpsMeasurements < ActiveRecord::Migration[5.2]
  def change
    create_table :gps_measurements do |t|
      t.references :device
      t.st_point :road_lonlat, geographic: true
      t.datetime :incoming_measurement_at
      t.timestamps
    end
    add_index :gps_measurements, :road_lonlat, using: :gist
  end
end
