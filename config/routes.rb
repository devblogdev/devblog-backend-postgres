Rails.application.routes.draw do
  resources :comments
  resources :posts
  resources :users

  namespace :api do 
    namespace :v1 do
      resources :auth, only: [:create, :index]
    end
  end

  get '/profile', to: 'users#profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
