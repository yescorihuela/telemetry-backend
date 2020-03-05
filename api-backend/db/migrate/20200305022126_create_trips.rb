class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.references :route
      t.references :trip_status
      t.timestamps
    end
  end
end
