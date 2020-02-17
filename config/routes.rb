Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :diseases, only: [:show, :index, :new, :create, :destroy]  do
    resources :bookings, only: [:new, :create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
