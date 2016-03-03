Rails.application.routes.draw do

  root 'users#show'
  get 'home' => 'home#index'
  devise_for :users


end
