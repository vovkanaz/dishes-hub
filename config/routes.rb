Rails.application.routes.draw do

  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :users
  root 'home#index'
  #get 'categories', to: 'category#index'
  #get 'categories/:id', to: 'category#show'
  resources :categories
  resources :recipes
  resources :users
  get 'home/about', to: 'home#about'
  # post 'recipes', to: 'recipes#new'
  get 'user/:id', to: 'user#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
