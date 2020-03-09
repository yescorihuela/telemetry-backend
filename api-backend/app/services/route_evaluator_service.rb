class RouteEvaluatorService
  def self.device_out_from_route?(device, trip, incoming_coordinates, threshold = 100)
    begin
      route = device.gps_measurements.where(:trip_id => trip.trip_id).last.trip.route
      unless RouteEvaluatorService.point_exists_in_route?(route.id, incoming_coordinates)
        DistanceEvaluator.next_closer_route_point(route.id, incoming_coordinates) > threshold
      end
    rescue
      true
    end
  end

  def self.vehicle_is_stopped?(device_id, trip_id, threshold = 120)
    begin
      (Time.now - Device.find(device_id).gps_measurements.where(:trip_id => trip_id).last.incoming_measurement_at).seconds.to_i >= threshold
    rescue
      true
    end
  end

  def self.point_exists_in_route?(route_id, point)
    Route.find(route_id).route_coordinates.exists?(route_lonlat: point)
  end



end