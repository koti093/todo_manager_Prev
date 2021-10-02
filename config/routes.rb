Rails.application.routes.draw do
  #get "todos", to: "todos#index"
  #post "todos/create", to: "todos#create"
  #post "todos/update", to: "todos#update"
  #get "todos/:id", to: "todos#show"
  get "users", to: "users#index"
  get "users/create", to: "users#create"
  get "users/update", to: "users#update"
  get "users/:id", to: "users#show"

  #resources :todos
  #resources :users
end
