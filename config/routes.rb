Rails.application.routes.draw do
  
   resources :reviews, only: [:index, :create, :show, :update, :destroy]
  resources :users
  resources :books
  # get "/books/:id/reviews", to: "books#book_reviews"
  # post"/books/reviews/:id"
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
