class EventService
  def self.get_events_by_date_device(trip_id, datetime, license_plate = '')  
    EventRoute.select("events.id, license_plate, device_serial_number, ST_X(location::geometry) as latitude, 
    ST_Y(location::geometry) as longitude, occurred_at, events.description")
    .joins("INNER JOIN events ON (event_routes.event_id = events.id)")
    .joins("INNER JOIN devices ON (event_routes.device_id = devices.id)")
    .joins("INNER JOIN vehicle_devices ON (devices.id = vehicle_devices.device_id)")
    .joins("INNER JOIN vehicles ON (vehicle_devices.vehicle_id = vehicles.id)")
    .where("(trip_id = ? and occurred_at::date = ?) or (license_plate = ?)", trip_id, datetime, license_plate)
  end
end