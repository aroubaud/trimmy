Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users, only: [:index, :show]
  resources :services do
    resources :bookings, only: [:index, :show, :new, :create]
  end
end
