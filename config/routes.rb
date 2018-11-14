Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get "hairstylists", to: "hairstylists#index", as: :hairstylists
  get "hairstylists/:id", to: "hairstylists#show", as: :hairstylist

  resources :services do
    resources :bookings, only: [:index, :show, :new, :create]
  end
end
