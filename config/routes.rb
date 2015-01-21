Rails.application.routes.draw do
  # Omniauth
  get '/auth/:provider/callback', to: 'sessions#create'

  root 'home#index'

  resources :artworks, :only => [:show] do
    resources :user_artwork_ratings, :only => [:create]
  end

  resources :artists, :only => [:show] do
    resources :user_artist_ratings, :only => [:create]
  end

  resources :users
  resource :sessions, :only => [:create]

  delete '/logout', to: "sessions#destroy"
end
