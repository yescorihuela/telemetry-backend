class Device < ApplicationRecord
    has_one :vehicle, through: :vehicle_device
    has_many :gps_measurement
end
