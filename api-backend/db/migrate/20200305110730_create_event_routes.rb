class CreateEventRoutes < ActiveRecord::Migration[5.2]
  def change
    create_table :event_routes do |t|
      t.references :vehicle
      t.references :event
      t.timestamps
    end
  end
end
