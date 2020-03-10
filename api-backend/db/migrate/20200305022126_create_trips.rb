class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.references :device
      t.references :route
      t.references :trip_status
      t.datetime :started_at
      t.datetime :finished_at
      t.timestamps
    end
  end
end
