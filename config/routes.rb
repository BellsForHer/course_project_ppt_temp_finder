Rails.application.routes.draw do
  resources :uploads, only: [:index, :new, :create, :destroy]
  get 'uploads/index'
  get 'uploads/new'
  get 'uploads/create'
  get 'uploads/destroy'
  
  root "templates#index"

  get "about", to: "templates#about"

  get "users", to: "templates#users"
  
  get "login", to: "templates#login"

  get "uploads", to: "uploads#index"
 

  
end

# CarrierWaveExample::Rails.application.routes.draw do
#   resources :uploads, only: [:index, :new, :create, :destroy]
#   root "uploads#index"
# end
