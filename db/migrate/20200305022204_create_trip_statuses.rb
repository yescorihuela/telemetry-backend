class CreateTripStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :trip_statuses do |t|
      t.string :description, unique: true
      t.timestamps
    end
  end
end
