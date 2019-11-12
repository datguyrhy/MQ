Rails.application.routes.draw do

  devise_for :users
  devise_for :customers
  root 'posts#index'
  resources :menus
  resources :restaurants
  resources :orders
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
