Rails.application.routes.draw do
  devise_for :users
  resources:messages
  root "groups#index"
  resources :users, only: [:edit, :update]
  resources :groups, only: [:new, :create, :edit, :update]
end
