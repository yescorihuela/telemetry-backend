class AddTripIdToGpsMeasurements < ActiveRecord::Migration[5.2]
  def change
    add_reference :gps_measurements, :trip, foreign_key: true
  end
end
