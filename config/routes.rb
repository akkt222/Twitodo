Rails.application.routes.draw do
  root 'twitodo#index'
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  resources :tweets
  get "/tweets/search" => 'tweets#search'
end
