Rails.application.routes.draw do
  root to: "generals#index"
  resources :sessions, only: [:new, :create, :destroy]
  get "signup", to: "users#signup", as: "signup"
  get "signin", to: "sessions#new", as: "signin"
  delete "signout", to: "sessions#destroy", as: "signout"
  get "dashboard", to: "users#show", as: "dashboard"
  get "edit", to: "links#edit", as: "link_update"
  resources :users
  resources :links, only: [:create, :destroy, :edit]
  resources :generals
  get "/:path" => "links#redirector"
end
