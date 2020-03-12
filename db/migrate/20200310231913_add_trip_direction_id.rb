class AddTripDirectionId < ActiveRecord::Migration[5.2]
  def change
    add_reference :trips, :trip_direction, foreign_key: true
  end
end
