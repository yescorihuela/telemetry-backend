class VehicleRoute < ApplicationRecord
    belongs_to :vehicles
    belongs_to :routes
end
