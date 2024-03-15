Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Define routes for different controllers with distinct paths
  get '/phones' => "phones#index"
  get '/customers' => "customers#customers"
  get '/employees' => "employees#employees"
  get '/about' => "application#about"

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "/up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "phones#index"
end
