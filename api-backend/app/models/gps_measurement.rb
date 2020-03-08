class GpsMeasurement < ApplicationRecord
    belongs_to :device
    belongs_to :trip
end