Rails.application.routes.draw do
  devise_for :shops
  root "posts#index"
  resources :posts, only: :index
  resources :shops, only: [:show,:edit,:update]
  end