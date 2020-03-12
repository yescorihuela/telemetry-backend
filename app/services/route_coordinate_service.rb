class RouteCoordinateService
  def self.is_within_route?(route_id, measurements)
    RouteCoordinate.find_by_sql(%{SELECT EXISTS
    (SELECT id FROM route_coordinates rc
      WHERE ST_INTERSECTS(rc.route_polygon::geometry, 
        ST_Transform(
          ST_GeomFromText('%s', 4326), 4326
        )
      ) and rc.route_id = %d) as is_within_route} % [measurements, route_id]).first[:is_within_route]
  end

  def self.back_to_route?(trip_id, device_id, route_id, measurements)
    @last_event = EventRoute.where(trip_id: trip_id, device_id: device_id).last
    if @last_event and @last_event.event.id == 1
      if RouteCoordinateService.is_within_route?(route_id, measurements)
        true
      else
        false
      end
    end
  end
end