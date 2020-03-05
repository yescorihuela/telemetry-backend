class CreateDevices < ActiveRecord::Migration[5.2]
  def change
    create_table :devices do |t| 
      t.string :device_serial_number, unique: true
      t.datetime :adquisition_date
      t.timestamps
    end
  end
end
