Rails.application.routes.draw do
  namespace :admin do
    get 'users/new'
    get 'users/create'
  end
  get 'home/index'
  resources :job_offers do
    resources :job_aplications, only: :create
  end

  devise_for :users, controllers: { registrations: 'users/registrations' }

  namespace :admin do
    resources :users, only: [:new, :create]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  authenticated :user do
    root to: 'job_offers#index', as: :authenticated_root
  end

  unauthenticated do
    root to: 'home#index', as: :unauthenticated_root
  end
end
