Rails.application.routes.draw do
  
  resources :hfcategories
  resources :halfprices
  devise_for :users
  resources :scategories
  resources :order_items
  get 'cart', to: 'cart#show'
  resources :blogs

  resources :posts
  root 'posts#index'
  get '/posts/hashtag/:name', to: 'posts#hashtags'
  get '/posts/guide', to:'posts#guide'
  get '/posts/shop', to:'posts#shop'
  
  resources :sales
  get '/sales/shashtag/:name', to: 'sales#hashtags'

  resources :featureds
  get '/featureds/season', to:'featureds#season'
  get '/featureds/fhashtag/:name', to: 'featureds#hashtags'
  
  
  
  

  
  resources :guides
  resources :shops
  resources :categories

  

  # Blogging Controller Routes
  get 'blogging/first_blog'
  get 'blogging/test_blog'
  get 'halfprice/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
