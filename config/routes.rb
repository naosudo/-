Rails.application.routes.draw do
  devise_for :users
  get 'items/index'
  resources :items, only: [:index, :new, :create, :show] 
  
  root to: "items#index"
  
end