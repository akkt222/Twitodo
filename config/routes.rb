Rails.application.routes.draw do
  root 'twitodo#index'
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  resources :groups
  get '/tweets', to: 'tweets#update'
  # resources :tweets, only: [:update]
  get "/tweets/search" => 'tweets#search'
end
