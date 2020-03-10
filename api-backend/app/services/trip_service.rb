class TripService
  def self.get_trips_by_date(datetime)
    Trip.select('trips.id, trip_statuses.description as status, vehicles.license_plate, trips.started_at,
    trips.finished_at')
    .joins('INNER JOIN trip_statuses ON (trips.trip_status_id = trip_statuses.id)')
    .joins('INNER JOIN devices ON (trips.device_id = devices.id)')
    .joins('INNER JOIN vehicle_devices ON (devices.id = vehicle_devices.device_id)')
    .joins('INNER JOIN vehicles ON (vehicle_devices.vehicle_id = vehicles.id)')
    .where('trips.created_at::date = ?', datetime)
  end
end