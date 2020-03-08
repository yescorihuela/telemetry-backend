class CreateRouteCoordinates < ActiveRecord::Migration[5.2]
  def change
    create_table :route_coordinates do |t|
      t.belongs_to :route
      t.st_point :route_lonlat, geographic: true
      t.timestamps
    end
    add_index :route_coordinates, :route_lonlat, using: :gist
  end
end
