class GpsMeasurementService
  def self.check_location(trip_id, latitude, longitude, datetime, threshold = 100)
      point = "POINT(#{longitude} #{latitude})"
      GpsMeasurement.find_by_sql(%{SELECT 1 as id, incoming_measurement_at, 
        ST_X(road_lonlat::geometry) as latitude, ST_Y(road_lonlat::geometry) as longitude,
        ST_Distance(
        ST_Transform(('SRID=4326;' || road_lonlat)::geometry, 2163), 
        ST_Transform('SRID=4326; %s'::geometry, 2163)
        ) as distance
        FROM gps_measurements WHERE 
        ST_Distance(
          ST_Transform(('SRID=4326;' || road_lonlat)::geometry, 2163), 
        ST_Transform('SRID=4326; %s'::geometry, 2163)) <= %d
        and trip_id = %s
        and incoming_measurement_at::date = '%s'} % [point, point, threshold, trip_id, datetime]).first
  end
end

# GpsMeasurementService.check_location(13, -33.45403754073398, -70.69127082824706, '2020-03-11')
# trips/13/coordinates/2020-03-11/?latitude=-33.45403754073398&longitude=-70.69127082824706