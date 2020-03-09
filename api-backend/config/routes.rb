Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do
      get 'gps_measurements/check_location/', to: 'gps_measurements#check_location', as: :devices, format: :json
    end    
  end
end
