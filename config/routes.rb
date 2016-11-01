Rails.application.routes.draw do
  devise_for :users

  resources :users
  resources :products
  resources :collections, only: [:show]

  root 'pages#index'
  post 'cart' => 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
