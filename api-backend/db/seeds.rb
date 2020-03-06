# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

license_plates = 'ABCDEF'.chars.permutation.to_a.map(&:join).sort[0...3]

drivers = Driver.create([
    {
        first_name: 'Benjamin',
        last_name: 'Silva',
        identification_code: '1111111111',
        phone: '1234567890'
    },
    {
        first_name: 'Macarena',
        last_name: 'Larrain',
        identification_code: '2222222222',
        phone: '2345678901'
    },
    {
        first_name: 'Jorge',
        last_name: 'Rodriguez',
        identification_code: '3333333333',
        phone: '3456789012'   
    }    
])

devices = Device.create([
    {
        device_serial_number: 'd131dd02c5e6eec4',
        adquisition_date: Time.now
    },
    {
        device_serial_number: '4d131dd02c5e6eec',
        adquisition_date: Time.now()
    },
    {
        device_serial_number: 'ec4d131dd02c5e6e',
        adquisition_date: Time.now()
    }
])


vehicles = Vehicle.create([
    {
        license_plate: license_plates.pop(),
        driver_id: 1,
        total_seats: (rand() * 100).to_i
    }
])

vehicle_devices = VehicleDevice.create([
    {
        vehicle_id: 1,
        device_id: 1
    },
    {
        vehicle_id: 2,
        device_id: 2
    },
    {
        vehicle_id: 3,
        device_id: 3
    }    
])