Rails.application.routes.draw do
  
  root "templates#index"

  get "users", to: "users#users"'
end
