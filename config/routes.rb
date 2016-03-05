Rails.application.routes.draw do
  root 'users#show'

  get 'home' => 'home#index'

  devise_for :users

  resources :users, only: :show do
    resources :items, only: :create
  end
end
