Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do
      get 'trips/:datetime', to: 'trips#check_trips', as: :check_trips
      get 'trips/:datetime/direction/:trip_direction_id', to: 'trips#check_trip_directions', as: :check_trip_directions
      get 'trips/:trip_id/events/:datetime(/:license_plate)', to: 'trips#check_events', as: :check_events
      get 'trips/:trip_id/coordinates/:datetime/', to: 'trips#check_coordinates', as: :check_coordinates
      get 'vehicles/', to: 'vehicles#index', as: :all_vehicles
      get 'vehicles/:id', to: 'vehicles#show', as: :get_vehicle
    end    
  end
end
