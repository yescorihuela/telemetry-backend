class GpsMeasurementService
  def self.check_location(device_id, latitude, longitude, datetime)
    begin
      GpsMeasurement.travelled_by_here(device_id, latitude, longitude, datetime)
    rescue 
      nil
    end
  end
end

