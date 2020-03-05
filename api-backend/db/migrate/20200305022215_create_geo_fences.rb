class CreateGeoFences < ActiveRecord::Migration[5.2]
  def change
    create_table :geo_fences do |t|

      t.timestamps
    end
  end
end
