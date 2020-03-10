class GpsMeasurement < ApplicationRecord
  belongs_to :device
  belongs_to :trip

  scope :travelled_by_here, -> (device_id, latitude, longitude, date_passed, threshold = 100) { 
    where(%{device_id = %d 
    and incoming_measurement_at = '%s'
    and ST_Distance(
      ST_Transform(road_lonlat, 2163), 
      ST_Transform('POINT (%0.14f %0.14f)', 2163)
      ) <= %d
    } % [device_id, longitude, latitude, date_passed, threshold])
    }
    
end