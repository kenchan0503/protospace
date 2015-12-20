Rails.application.routes.draw do
  devise_for :users
  root 'prototypes#index'
  resources :top, only: [:index]
  resources :user, only: [:show, :new, :create, :edit, :update, :destroy]
  resources :prototypes
  post 'like/:prototype.id' => 'likes#create', as: 'like'
  delete 'unlike/:prototype.id' => 'likes#destroy', as: 'unlike'
  resources :prototypes, only: [:show, :new, :create, :edit, :update, :destroy]
end
