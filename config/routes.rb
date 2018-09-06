Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :musics, except: [:new, :edit]
      resources :lyrics, except: [:new, :edit]
      resources :users, except: [:new, :edit]
    end
  end
end
