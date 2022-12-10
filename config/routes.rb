Rails.application.routes.draw do
  resources :comments
  resources :champions
  resources :users
  resources :champions, only: [:show] do
    # nested resource for comments
    resources :comments, only: [:show, :index]
  end
  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end
