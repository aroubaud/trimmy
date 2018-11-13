Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get "hairstylists", to: "users#index", as: :hairstylists
  # get "users/:id", to: "users#show", as: :user
  get "hairstylists/:hairstylist_id/services", to: "services#index", as: :hairstylist_services

  resources :services do
    resources :bookings, only: [:index, :show, :new, :create]
  end
end
