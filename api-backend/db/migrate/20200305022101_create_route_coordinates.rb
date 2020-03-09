class CreateRouteCoordinates < ActiveRecord::Migration[5.2]
  def change
    create_table :route_coordinates do |t|
      t.references :route
      t.st_polygon :route_polygon, geographic: true
      t.timestamps
    end
    add_index :route_coordinates, :route_polygon, using: :gist
  end
end
