class Trip < ApplicationRecord
    belongs_to :route
    belongs_to :trip_status
    belongs_to :device
    belongs_to :trip_direction
end
