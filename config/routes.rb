Rails.application.routes.draw do
  root 'twitodo#index'
  resources :twitodo, only: [:index, :show]
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  resources :groups
  get '/tweets', to: 'tweets#update'
  # resources :statuses, only: [:update]
  put '/statuses', to: 'statuses#update'
  # resources :statuses
  # put '/statuses', to: 'statuses#update'
  get '/user', to: 'users#destroy'
  get "/tweets/search" => 'tweets#search'
end
