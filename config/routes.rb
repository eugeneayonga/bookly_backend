Rails.application.routes.draw do

  get "/books", to: "books#index"

  get "/books/:id", to: "books#show"

  post "/books", to: "books#create"
  
  patch "/books/:id", to: "books#update"
  
  
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
