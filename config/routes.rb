Rails.application.routes.draw do
  #get "todos", to: "todos#index"
  #post "todos/create", to: "todos#create"
  #post "todos/update", to: "todos#update"
  #get "todos/:id", to: "todos#show"

  resources :todos
end
