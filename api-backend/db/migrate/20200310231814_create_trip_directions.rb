class CreateTripDirections < ActiveRecord::Migration[5.2]
  def change
    create_table :trip_directions do |t|
      t.string :departure
      t.string :arrival
      t.string :direction
      t.timestamps
    end
  end
end
