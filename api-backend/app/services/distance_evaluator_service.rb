class DistanceEvaluatorService
  def self.distance_to_position(terminal_lat, terminal_lon, position_lat, position_lon, threshold = 100)
    sql = "SELECT ST_Distance(
            ST_Transform('SRID=4326;POINT(#{terminal_lon} #{terminal_lat})'::geometry, 2163),
            ST_Transform('SRID=4326;POINT(#{position_lon} #{position_lat})'::geometry, 2163)
        ) as distance"
    Device.find_by_sql(sql).first
  end

  def self.is_close_to_position?(terminal_lat, terminal_lon, position_lat, position_lon, threshold = 100)
    sql = "SELECT ST_Distance(
            ST_Transform('SRID=4326;POINT(#{terminal_lon} #{terminal_lat})'::geometry, 2163),
            ST_Transform('SRID=4326;POINT(#{position_lon} #{position_lat})'::geometry, 2163)
        ) as distance"
    begin
      Device.find_by_sql(sql).first.distance <= threshold
    rescue
        false
    end
  end
end