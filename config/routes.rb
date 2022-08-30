Rails.application.routes.draw do
  post "/create" => "users#create"
  get "/users" => "users#index"
  delete "/users/:id" => "user#destroy"
  post "/dogs" => "dogs#create"
  get "/dogs" => "dogs#index"
end
