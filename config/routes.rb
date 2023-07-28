Rails.application.routes.draw do
  resources :job_offers
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "job_offers#index"
end
