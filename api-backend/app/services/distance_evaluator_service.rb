class DistanceEvaluatorService

  def self.distance_to_position(terminal_lat, terminal_lon, position_lat, position_lon, threshold = 100)
    Device.find_by_sql(render_query(terminal_lat, terminal_lon, position_lat, position_lon)).first
  end

  def self.is_close_to_position?(terminal_lat, terminal_lon, position_lat, position_lon, threshold = 100)
    begin
      Device.find_by_sql(render_query(terminal_lat, terminal_lon, position_lat, position_lon)).first.distance <= threshold
    rescue
        false
    end
  end

  private

  def render_query(pterminal_lat, terminal_lon, position_lat, position_lon)
    sql = "SELECT ST_Distance(
            ST_Transform('SRID=4326;POINT(#{terminal_lon} #{terminal_lat})'::geometry, 2163),
            ST_Transform('SRID=4326;POINT(#{position_lon} #{position_lat})'::geometry, 2163)
        ) as distance"    
  end
end