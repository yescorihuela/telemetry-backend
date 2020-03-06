Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do
      get 'devices', to: 'devices#index', as: :devices, format: :json
    end    
  end
end
