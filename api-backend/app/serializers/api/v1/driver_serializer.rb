class DriverSerializer
  include FastJsonapi::ObjectSerializer
  set_id :id
  attributes :first_name, :last_name, :phone, :identification_code
  has_one :vehicle

end
