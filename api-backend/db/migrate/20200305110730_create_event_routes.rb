class CreateEventRoutes < ActiveRecord::Migration[5.2]
  def change
    create_table :event_routes do |t|
      t.references :device
      t.references :event
      t.references :trip
      t.st_point :location, geographic: true
      t.timestamps
    end
  end
end
