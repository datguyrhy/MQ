Rails.application.routes.draw do

  devise_for :customers
  root 'pages#show'
  resources :menus
  resources :restaurants
  resources :orders
  resources :posts
  resources :customer_profiles

  get '/posts/:post_id/orders' => 'orders#index', as: 'post_orders'
  get '/posts/:post_id/orders/new' => 'orders#new', as: 'new_post_order'
  post '/posts/:post_id/orders' => 'orders#create'
  get '/posts/:post_id/orders/:id' => 'orders#show', as: 'post_order'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/ajax/fetchrestaurant/:restaurant_id' => 'posts#fetch'


end
