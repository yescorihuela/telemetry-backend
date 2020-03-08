class Trip < ApplicationRecord
    belongs_to :route
    belongs_to :trip_status
end
