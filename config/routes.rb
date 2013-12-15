Lootly::Application.routes.draw do

  root 'lootly#index'

  resources :users, only: [:new, :create]
  
  resource :sessions, only:[:new, :create, :destroy]
  
  resource :products, only:[:index, :show]
end
