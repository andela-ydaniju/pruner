# frozen_string_literal: true
Rails.application.routes.draw do
  root to: 'homes#index'

  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  resources :links, only: [:create, :destroy, :update, :edit]
  resources :generals

  get 'signup', to: 'users#signup', as: 'signup'
  get 'signin', to: 'sessions#new', as: 'signin'
  delete 'signout', to: 'sessions#destroy', as: 'signout'
  get 'dashboard', to: 'users#show', as: 'dashboard'
  get '/:path' => 'redirection#show'
end
