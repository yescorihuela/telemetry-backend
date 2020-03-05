class CreateGpsMeasurements < ActiveRecord::Migration[5.2]
  def change
    create_table :gps_measurements do |t|
      t.references :device
      t.float :latitude
      t.float :longitude
      t.datetime :incoming_measurement_at
      t.timestamps
    end
  end
end
