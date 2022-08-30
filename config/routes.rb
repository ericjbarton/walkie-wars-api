Rails.application.routes.draw do
  post "/create" => "users#create"
  post "/users" => "users#create"
  get "/users" => "users#index"
  delete "/users/:id" => "user#destroy"
  post "/dogs" => "dogs#create"
  get "/dogs" => "dogs#index"
  post "/walks" => "walks#create"
  get "/walks" => "walks#index"
end
