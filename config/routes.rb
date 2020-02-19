Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/profil', to: 'pages#profil'
  resources :diseases, only: [:show, :index, :new, :create, :destroy]  do
    resources :bookings, only: [:new, :create, :destroy]
  end
  resources :bookings, only: [:index, :show]
end
