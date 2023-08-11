Rails.application.routes.draw do
  namespace :admin do
    get 'users/new'
    get 'users/create'
  end
  resources :job_aplications, only: :index
  get 'home/index'
  resources :job_offers do
    resources :job_aplications, only: :create
  end

  devise_for :users, controllers: { registrations: 'users/registrations' }

  namespace :admin do
    resources :users, only: [:new, :create]
  end
  root 'home#dashboard_redirect'

  
end
