class Device < ApplicationRecord
    has_many :devices, through: :vehicle_device
end
