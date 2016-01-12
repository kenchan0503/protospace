Rails.application.routes.draw do
  devise_for :users
  root 'prototypes#index'
  resources :top, only: [:index]
  resources :users, only: [:show, :new, :create, :edit, :update, :destroy]
  resources :prototypes do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create]
  end
  namespace :prototypes do
    resources :newest, only: :index
  end
  resources :prototypes, only: [:show, :new, :create, :edit, :update, :destroy]
  resources :tags, only: [:index, :show]
end
