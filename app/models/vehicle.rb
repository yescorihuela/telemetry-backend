class Vehicle < ApplicationRecord
    has_many :vehicle_devices
    has_many :devices, through: :vehicle_devices
    belongs_to :driver
end
