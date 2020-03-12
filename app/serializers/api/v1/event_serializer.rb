class Api::V1::EventSerializer
  include FastJsonapi::ObjectSerializer
  set_id :id
  attributes :license_plate, :device_serial_number, :latitude, :longitude, :occurred_at, :description
end
