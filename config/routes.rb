Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :courses, except: [:new, :edit]
      resources :queries, only: [:create]

    end
  end
end
