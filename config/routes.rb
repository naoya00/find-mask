Rails.application.routes.draw do
  devise_for :shops
  root to: "posts#index"
  resources :posts, only: [:index,:create]
  resources :masks, only: [:create,:destroy]
  resources :comments, only: [:index,:create]

  resources :shops, only: [:index,:show,:edit,:update]do
    resources :posts, only: :new
    resources :masks, only: :new
    collection do
      get 'search'
    end
  end
  
  end