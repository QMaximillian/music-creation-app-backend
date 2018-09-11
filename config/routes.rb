Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      # resources :music_channels
      resources :users
      resources :music_messages
      resources :song_rooms
      # resources :lyric_channels
      resources :lyric_messages
      post '/login', to: 'auth#login'
      get '/reauth', to: 'auth#reauth'
      # post '/login', to: 'auth/login'
      mount ActionCable.server => '/cable'
    end
  end
end
