# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_08_162402) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "postgis"

  create_table "devices", force: :cascade do |t|
    t.string "device_serial_number"
    t.datetime "adquisition_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drivers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "identification_code"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_routes", force: :cascade do |t|
    t.bigint "device_id"
    t.bigint "event_id"
    t.bigint "trip_id"
    t.geography "location", limit: {:srid=>4326, :type=>"st_point", :geographic=>true}
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["device_id"], name: "index_event_routes_on_device_id"
    t.index ["event_id"], name: "index_event_routes_on_event_id"
    t.index ["trip_id"], name: "index_event_routes_on_trip_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "geo_fences", force: :cascade do |t|
    t.geography "location", limit: {:srid=>4326, :type=>"st_point", :geographic=>true}
    t.string "description"
    t.integer "threshold", default: 100
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location"], name: "index_geo_fences_on_location", using: :gist
  end

  create_table "gps_measurements", force: :cascade do |t|
    t.bigint "device_id"
    t.geography "road_lonlat", limit: {:srid=>4326, :type=>"st_point", :geographic=>true}
    t.datetime "incoming_measurement_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "trip_id"
    t.index ["device_id"], name: "index_gps_measurements_on_device_id"
    t.index ["road_lonlat"], name: "index_gps_measurements_on_road_lonlat", using: :gist
    t.index ["trip_id"], name: "index_gps_measurements_on_trip_id"
  end

  create_table "route_coordinates", force: :cascade do |t|
    t.bigint "route_id"
    t.geography "route_lonlat", limit: {:srid=>4326, :type=>"st_point", :geographic=>true}
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["route_id"], name: "index_route_coordinates_on_route_id"
    t.index ["route_lonlat"], name: "index_route_coordinates_on_route_lonlat", using: :gist
  end

  create_table "routes", force: :cascade do |t|
    t.string "name"
    t.string "direction"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trip_statuses", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trips", force: :cascade do |t|
    t.bigint "route_id"
    t.bigint "trip_status_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["route_id"], name: "index_trips_on_route_id"
    t.index ["trip_status_id"], name: "index_trips_on_trip_status_id"
  end

  create_table "vehicle_devices", force: :cascade do |t|
    t.bigint "device_id"
    t.bigint "vehicle_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["device_id"], name: "index_vehicle_devices_on_device_id"
    t.index ["vehicle_id"], name: "index_vehicle_devices_on_vehicle_id"
  end

  create_table "vehicle_routes", force: :cascade do |t|
    t.bigint "vehicle_id"
    t.bigint "route_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["route_id"], name: "index_vehicle_routes_on_route_id"
    t.index ["vehicle_id"], name: "index_vehicle_routes_on_vehicle_id"
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "license_plate"
    t.bigint "driver_id"
    t.integer "total_seats"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["driver_id"], name: "index_vehicles_on_driver_id"
  end

  add_foreign_key "gps_measurements", "trips"
end
