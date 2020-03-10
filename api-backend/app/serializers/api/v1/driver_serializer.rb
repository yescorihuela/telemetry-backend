class DriverSerializer
  include FastJsonapi::ObjectSerializer
  set_id :id
  attributes :first_name, :last_name, :phone
  has_one :vehicle

end
