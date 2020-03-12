class EventRoute < ApplicationRecord
    belongs_to :device
    belongs_to :event
    belongs_to :trip
end
