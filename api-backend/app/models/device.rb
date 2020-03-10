class Device < ApplicationRecord
    has_many :vehicle_devices
    has_many :vehicles, through: :vehicle_devices
    has_many :gps_measurements 
end
