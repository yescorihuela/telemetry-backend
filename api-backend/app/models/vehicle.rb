class Vehicle < ApplicationRecord
    has_many :devices, through: :vehicle_device
end
