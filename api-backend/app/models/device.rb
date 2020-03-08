class Device < ApplicationRecord
    has_many :vehicle_devices
    has_one :vehicle, through: :vehicle_devices
    has_many :gps_measurements
end
