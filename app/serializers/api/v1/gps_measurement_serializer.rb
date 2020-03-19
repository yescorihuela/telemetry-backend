class Api::V1::GpsMeasurementSerializer
  include FastJsonapi::ObjectSerializer
  set_id :id
  attributes :incoming_measurement_at, :latitude, :longitude, :distance, :next_measurement
end
