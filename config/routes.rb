Rails.application.routes.draw do
  
  resources :wishlists
  resources :favorites
  resources :reviews
  resources :users
  resources :cars
  post '/login', to: 'session#create'
  post '/signup', to: 'users#create'
  delete '/logout', to: 'session#destroy'
  get '/auth', to: 'users#show'
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
