class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.string :TripStatus
      t.string :GeoFence

      t.timestamps
    end
  end
end
