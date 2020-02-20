Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/profil', to: 'pages#profil'
  get '/profil/index', to: 'pages#index'
  delete '/profil/destroy', to: 'pages#destroy'
  resources :diseases  do
    resources :bookings, only: [:new, :create, :destroy]
  end
  resources :bookings, only: [:index, :show]

end
