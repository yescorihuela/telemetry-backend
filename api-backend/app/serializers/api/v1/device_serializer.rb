
class DeviceSerializer
  include FastJsonapi::ObjectSerializer
  set_id :id
  attributes :device_serial_number, :adquisition_date
  has_many :gps_measurements
end    
