Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :tattoos, only: [:index, :show]
  resources :users do
    resources :bookings
    resources :tattoos, except: [:index, :show, :edit, :update]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
