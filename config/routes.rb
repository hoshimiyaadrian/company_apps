Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  
  resources :users
  resources :companies
  resources :tasks
end
