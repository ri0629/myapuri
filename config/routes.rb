Rails.application.routes.draw do
  devise_for :users
  root to: 'customers#index'
  resources :customers, only: [:index, :new, :create, :edit, :update]
  resources :customers do
  resources :comments, only: :create
end
end
