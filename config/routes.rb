Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }
  root to: 'homes#index'

  post '/homes/guest_sign_in', to: 'homes#new_guest'
  get '/posts/search', to: 'posts#search'
  get '/posts/search_table',  to: 'posts#search_table'
  resources :homes, only: [:index]
  resources :posts do
    resources :comments, only: :create
    resources :likes, only: [:create, :destroy]
    collection do
      get 'search'
    end
  end
  resources :users, only: [:show, :edit, :update]
end
