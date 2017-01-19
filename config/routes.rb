Rails.application.routes.draw do
  root 'home#index'
  get 'category', to: 'category#index'
  get 'recipe', to: 'recipe#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
