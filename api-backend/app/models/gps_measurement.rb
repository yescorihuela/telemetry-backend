class GpsMeasurement < ApplicationRecord
  belongs_to :device
  belongs_to :trip

  scope :travelled_by_here, -> (device_id, latitude, longitude, date_passed, threshold = 100) { 
    where(%{device_id = %d 
    and incoming_measurement_at = '%s'
    and ST_Distance(road_lonlat, 'POINT (%0.14f %0.14f)') <= %d
    } % [device_id, longitude, latitude, date_passed, threshold])
    }
    
end