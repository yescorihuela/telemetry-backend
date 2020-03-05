Rails.application.routes.draw do
  concern :api do
    get 'devices', to: 'devices#index', as: :devices, format: :json
  end

  namespace :v1 do
    concerns :api 
  end
end
