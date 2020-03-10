class DistanceEvaluatorService

  def self.distance_to_position(point_from, point_to)
    Device.find_by_sql(render_query(point_from, point_to)).first
  end

  # next_closer_route_point(1, "POINT (-70.72380065917969 -33.69449472706071)")
  def self.next_closer_route_point(route_id, point, threshold = 100)
    begin
      sql = "SELECT ST_Distance(
        ST_Transform(('SRID=4326;' || route_lonlat)::geometry, 2163), 
        ST_Transform('SRID=4326;#{point}'::geometry, 2163)) as distance
        FROM route_coordinates WHERE 
        ST_Distance(ST_Transform(('SRID=4326;' || route_lonlat) ::geometry, 2163), 
        ST_Transform('SRID=4326;#{point}'::geometry, 2163)) > #{threshold} 
        and route_id = #{route_id} order by distance asc limit 1"
      Route.find_by_sql(sql).first.distance
    rescue
      -1
    end
  end


  def self.close_to_terminal?(point, threshold = 100)
      terminal = GeoFence.peor_es_nada_terminal()
      Device.find_by_sql("SELECT ST_Distance(
                              'SRID=4326;#{point}'::geometry,
                              'SRID=4326;#{terminal.location}'::geometry
                          ) as distance").first.distance <= threshold
  end
end