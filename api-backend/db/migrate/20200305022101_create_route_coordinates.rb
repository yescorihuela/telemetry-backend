class CreateRouteCoordinates < ActiveRecord::Migration[5.2]
  def change
    create_table :route_coordinates do |t|

      t.timestamps
    end
  end
end
