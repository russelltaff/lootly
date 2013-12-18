Lootly::Application.routes.draw do

  root 'lootly#index'

  resources :users, only: [:new, :create]
  
  resource :sessions, only:[:new, :create, :destroy]
  
  resources :products, only:[:index, :show]
end
