class GpsMeasurementService
  def self.check_location(device_id, latitude, longitude, datetime, threshold = 100)
      point = "POINT(#{longitude} #{latitude})"

      GpsMeasurement.find_by_sql(%{SELECT ST_Distance(
        ST_Transform(('SRID=4326;' || road_lonlat)::geometry, 2163), 
        ST_Transform('SRID=4326; %s'::geometry, 2163)
        ) as distance
        FROM gps_measurements WHERE 
        ST_Distance(
          ST_Transform(('SRID=4326;' || road_lonlat)::geometry, 2163), 
        ST_Transform('SRID=4326; %s'::geometry, 2163)) <= %d
        and device_id = %s
        and incoming_measurement_at::date = '%s';} % [point, point, threshold, device_id, datetime]).first.distance
  end
end

# GpsMeasurementService.check_location(1, -33.45403754073398, -70.69127082824706, '2020-03-10')