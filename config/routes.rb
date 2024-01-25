Rails.application.routes.draw do
  devise_for :users
  root to: 'customers#index'
  resources :customers, only: [:index, :new, :create, :edit, :update]
end
