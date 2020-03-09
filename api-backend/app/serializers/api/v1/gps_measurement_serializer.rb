class Api::V1::GpsMeasurementSerializer
  include FastJsonapi::ObjectSerializer
  set_id :id
  attributes :road_lonlat, :incoming_measurement_at
end
