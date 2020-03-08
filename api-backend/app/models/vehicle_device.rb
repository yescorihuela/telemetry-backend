class VehicleDevice < ApplicationRecord
    belongs_to :device
    belongs_to :vehicle
end
