class Api::V1::GpsMeasurementSerializer
  include FastJsonapi::ObjectSerializer
  set_id :id
  attributes :incoming_measurement_at, :latitude, :longitude, :distance, :next_measurement if: Proc.new {|record|
  record.next_measurement.nil? and (record.next_measurement - record.incoming_measurement_at).to_i > 0
}
end
