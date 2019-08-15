Rails.application.routes.draw do
  devise_for :views
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: :show
  resources :spaces do
    resources :bookings
    resources :reviews, only: :create
  end
end


