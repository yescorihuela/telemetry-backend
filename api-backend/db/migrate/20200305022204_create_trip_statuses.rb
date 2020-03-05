class CreateTripStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :trip_statuses do |t|
      t.string :GeoFence

      t.timestamps
    end
  end
end
