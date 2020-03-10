class Api::V1::VehicleSerializer
  include FastJsonapi::ObjectSerializer
  set_id :id
  attributes :license_plate, :total_seats
  belongs_to :driver
  has_many :devices
end
