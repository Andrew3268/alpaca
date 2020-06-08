Rails.application.routes.draw do
  resources :blogs
  devise_for :users
  root 'posts#index'
  get '/posts/guide', to:'posts#guide'
  get '/posts/shop', to:'posts#shop'

  resources :guides
  resources :shops
  resources :categories
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
