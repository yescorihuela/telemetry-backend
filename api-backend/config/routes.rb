Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do
      get 'gps_measurements/check_location/', to: 'gps_measurements#check_location', as: :devices
      get 'trips/:trip_id/events/:datetime(/:license_plate)', to: 'trips#check_events', as: :check_events
    end    
  end
end
