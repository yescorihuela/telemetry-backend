class Api::V1::TripSerializer
  include FastJsonapi::ObjectSerializer
  set_id :id
  attributes :status, :license_plate, :started_at, :finished_at
end
