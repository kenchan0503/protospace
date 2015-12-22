Rails.application.routes.draw do
  devise_for :users
  root 'prototypes#index'
  resources :top, only: [:index]
  resources :user, only: [:show, :new, :create, :edit, :update, :destroy]
  resources :prototypes do
    resources :likes, only: [:create, :destroy]
    collection do
      get 'newest' => 'prototypes#newest'
    end
  end
  resources :prototypes, only: [:show, :new, :create, :edit, :update, :destroy]
end
