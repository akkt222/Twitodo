Rails.application.routes.draw do
  root 'twitodo#index'
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
<<<<<<< HEAD
  resources :groups, only: [:new]
=======
  resources :tweets
  get "/tweets/search" => 'tweets#search'
>>>>>>> master
end
