class DistanceEvaluatorService

  def self.distance_to_position(point_from, point_to)
    begin
      Device.find_by_sql(%{SELECT ST_Distance(
          ST_Transform('SRID=4326;%s'::geometry, 2163),
          ST_Transform('SRID=4326;%s'::geometry, 2163)) as distance} % [point_from, point_to]).first[:distance]
    rescue
      -1
    end
  end

  def self.close_to_terminal?(point, threshold = 100)
      terminal = GeoFence.peor_es_nada_terminal()
      Device.find_by_sql(%{SELECT ST_Distance(
          ST_Transform('SRID=4326;%s'::geometry, 2163),
          ST_Transform('SRID=4326;%s'::geometry, 2163)) as distance} % [point, terminal.location]).first[:distance] <= threshold
  end

  def self.departed_from(trip_id, device_id)
    # This method will be refactor
    terminals = GeoFence.select(:description, :threshold, :location)
    begin
      first_measurement = GpsMeasurement.select(:road_lonlat).where(trip_id: trip_id, device_id: device_id).first[:road_lonlat]
    rescue
      Rails.logger.error('The requested trip has not GPS measurements')
      return -1
    end
    departed_points = []
    terminals.each do |term|
        distance = Device.find_by_sql(%{SELECT 
        ST_Distance(ST_Transform('SRID=4326;%s'::geometry, 2163), 
        ST_Transform('SRID=4326;%s'::geometry, 2163)) as distance} % [first_measurement, term[:location]]).first[:distance]
        departed_points.push({:terminal_name => term.description, :distance_from_terminal => distance})
    end
    departed_points.sort_by{|terminal, distance| distance}.first || -1
  end
end