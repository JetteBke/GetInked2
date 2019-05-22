Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :tattoos
  resources :users do
    resources :bookings
    resources :tattoos, only: [:index,:show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
