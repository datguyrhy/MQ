Rails.application.routes.draw do

  devise_for :customers
  root 'posts#index'
  resources :menus
  resources :restaurants
  resources :orders
  resources :posts

  get '/posts/:post_id/orders' => 'orders#index', as: 'post_orders'
  get '/posts/:post_id/orders/new' => 'orders#new', as: 'new_post_order'
  post '/posts/:post_id/orders' => 'orders#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
