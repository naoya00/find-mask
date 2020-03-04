Rails.application.routes.draw do
  devise_for :shops
  root "posts#index"
  resources :posts, only: [:index,:new,:create]
  resources :shops, only: [:show,:edit,:update]
  resources :masks, only: [:new,:create]
  end