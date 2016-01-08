Rails.application.routes.draw do
  root to: "generals#index"
  resources :sessions, only: [:new, :create, :destroy]
  get "signup", to: "users#signup", as: "signup"
  get "signin", to: "sessions#new", as: "signin"
  delete "signout", to: "sessions#destroy", as: "signout"
  resources :users
  resources :links, only: [:create, :destroy]
  resources :generals
  get "/:path" => "links#redirector"
end
