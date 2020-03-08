class CreateGeoFences < ActiveRecord::Migration[5.2]
  def change
    create_table :geo_fences do |t|
      t.st_point :location, geographic: true
      t.string :description
      t.integer :threshold, default: 100
      t.timestamps
    end
    add_index :geo_fences, :location, using: :gist
  end
end
