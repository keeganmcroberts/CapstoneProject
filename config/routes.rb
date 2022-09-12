Rails.application.routes.draw do
  
  resources :user_venues
  resources :user_bands
  resources :users
  resources :concerts
  resources :venues
  resources :bands
  resources :concert_dates
  resources :cities
  # post "/login", to: "application#login"
  post "/login", to: "session#create"
  get "/userInSession", to: "session#get_user"
  delete "/logout", to: "session#destroy" 
  post "/followBand", to: "user_bands#create"
  delete "/unfollowBand", to: "user_bands#destroy"
  post "/followVenue", to: "user_venues#create"
  delete "/unfollowVenue", to: "user_venues#destroy"
  
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
