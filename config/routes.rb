Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#index'
  post '/homes/guest_sign_in', to: 'homes#new_guest'
  resources :homes, only: [:index]
  resources :posts
  resources :users, only: [:show, :edit, :update]
end
