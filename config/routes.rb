Rails.application.routes.draw do
  root to: "generals#index"
  get "users/signup", to: "users#signup", as: "signup"
end
