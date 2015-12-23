Rails.application.routes.draw do
  root to: "generals#index"
  get "signup", to: "users#signup", as: "signup"
  get "signin", to: "users#signin", as: "signin"
  get "login", to: "sessions#new", as: "login"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy", as: "logout"
  resources :users
  resources :links
end
