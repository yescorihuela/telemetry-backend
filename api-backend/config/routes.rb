Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do
      get 'devices/:id', to: 'devices#show', as: :devices, format: :json
    end    
  end
end
