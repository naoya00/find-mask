Rails.application.routes.draw do
  devise_for :shops
  root to: "posts#index"
  resources :posts, only: [:index,:create]
  resources :masks, only: :create

  resources :shops, only: [:show,:edit,:update]do
  resources :posts, only: :new
  resources :masks, only: :new
  end
  
  end