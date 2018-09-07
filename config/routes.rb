Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :courses, except: [:new, :edit]
      resources :queries, only: [:create]
      resources :users, only: %i[create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'

    end
  end
end
