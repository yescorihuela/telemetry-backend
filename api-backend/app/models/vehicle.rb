class Vehicle < ApplicationRecord
    has_many :devices, through: :vehicle_device
    belongs_to :driver
end
