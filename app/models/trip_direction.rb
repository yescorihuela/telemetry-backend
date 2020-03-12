class TripDirection < ApplicationRecord
  has_many :trips

  validates :departure, presence: true, length: { in: 6..50 }
  validates :arrival, presence: true, length: { in: 6..50 }
  validates :direction, presence: true, length: { in: 6..20 }

end
