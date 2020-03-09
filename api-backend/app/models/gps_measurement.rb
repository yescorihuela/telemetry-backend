class GpsMeasurement < ApplicationRecord
  belongs_to :device
  belongs_to :trip

  scope :travelled_by_here, -> (device_id, latitude, longitude, date_passed) { 
    where(%{device_id = %d and road_lonlat = 'POINT (%0.14f %0.14f)' and incoming_measurement_at = '%s'} % [device_id, longitude, latitude, date_passed])
    }
    
end