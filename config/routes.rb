Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "kittens/index"
  get "kittens/show"
  get "kittens/new"
  get "kittens/create"
  get "kittens/edit"
  get "kittens/update"
  get "kittens/delete"
  # Defines the root path route ("/")
  root "kittens#index"
end
