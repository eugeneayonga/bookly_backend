Rails.application.routes.draw do

  get "/books", to: "books#index"

  get "/books/:id", to: "books#show"
  
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
