Rails.application.routes.draw do
  root 'home#index'
  #get 'categories', to: 'category#index'
  #get 'categories/:id', to: 'category#show'
  resources :categories
  resources :recipes
  get 'recipes', to: 'recipe#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
