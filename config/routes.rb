Rails.application.routes.draw do
  post "/create" => "users#create"
  get "/users" => "users#index"
end
