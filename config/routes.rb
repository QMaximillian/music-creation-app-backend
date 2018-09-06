Rails.application.routes.draw do
  resources :songs
  namespace :api do
    namespace :v1 do
      resources :musics
      resources :lyrics
      resources :users
      resources :songs
    end
  end
end
