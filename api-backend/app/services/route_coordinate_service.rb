class RouteCoordinateService
  def self.is_within_route?(route_id, latitude, longitude)
    RouteCoordinate.find_by_sql(%{SELECT EXISTS
    (SELECT id FROM route_coordinates rc
      WHERE ST_INTERSECTS(rc.route_polygon::geometry, 
        ST_Transform(
          ST_GeomFromText('POINT (%0.14f %0.14f)', 4326), 4326
        )
      ) and rc.route_id = %d) as is_within_route} % [longitude, latitude, route_id]).first[:is_within_route]
  end
end