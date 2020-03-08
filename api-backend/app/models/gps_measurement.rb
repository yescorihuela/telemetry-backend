class GpsMeasurement < ApplicationRecord
    belongs_to :device

    scope :within, -> (latitude, longitude, distance_in_meters = 100) {
        where(%{
            ST_Distance(road_lonlat, 'POINT(%f %f)') < %d
        } % [longitude, latitude, distance_in_meters])
    }

end
