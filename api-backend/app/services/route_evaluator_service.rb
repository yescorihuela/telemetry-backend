class RouteEvaluatorService
  def self.vehicle_is_stopped?(device_id, trip_id, threshold = 120)
    begin
      @gps_measurements = Device.find(device_id).gps_measurements.where(:trip_id => trip_id)
      if @gps_measurements.size
        (Time.now - @gps_measurements.last.incoming_measurement_at).seconds.to_i >= threshold
      else
        false
      end
    rescue
      true
    end
  end
end