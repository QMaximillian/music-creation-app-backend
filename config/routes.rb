Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :music_channels
      resources :users
      resources :music_messages
      mount ActionCable.server => '/cable'
    end
  end
end
