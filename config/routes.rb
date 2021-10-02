Rails.application.routes.draw do
  #get "todos", to: "todos#index"
  #post "todos/create", to: "todos#create"
  #post "todos/update", to: "todos#update"
  #get "todos/:id", to: "todos#show"
  #get "users", to: "users#index"
  #post "users/create", to: "users#create"
  #post "users/update", to: "users#update"
  #get "users/login", to: "users#login"
  #get "users/:id", to: "users#show"

  resources :todos
  resources :users
end
