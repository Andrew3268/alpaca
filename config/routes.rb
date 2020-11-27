Rails.application.routes.draw do
  
  resources :scategories
  resources :sales
  resources :order_items
  get 'cart', to: 'cart#show'
  resources :blogs


  devise_for :users
  root 'posts#index'
  get '/posts/guide', to:'posts#guide'
  get '/posts/shop', to:'posts#shop'

  get '/featureds/season', to:'featureds#season'

  get '/posts/hashtag/:name', to: 'posts#hashtags'
  get '/sales/shashtag/:name', to: 'sales#hashtags'
  get '/featureds/fhashtag/:name', to: 'featureds#hashtags'

  resources :featureds
  resources :guides
  resources :shops
  resources :categories
  resources :posts

  # Blogging Controller Routes
  get 'blogging/first_blog'
  get 'blogging/test_blog'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
