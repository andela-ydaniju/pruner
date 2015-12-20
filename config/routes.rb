Rails.application.routes.draw do
  root to: "generals#index"
  get "users/signup", to: "users#signup", as: "signup"
  get "users/signin", to: "users#signin", as: "signin"
  resources :users
end
