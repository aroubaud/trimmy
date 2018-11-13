Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users, only: [:index, :show]
  resources :bookings, only: [:index]
  resources :services do
    resources :bookings, only: [:show, :new, :create]
  end
end
