# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  resources :comments
  resources :posts, only: [:index, :create, :update, :destroy]
  resources :users, only: [:index, :create, :update]
  resources :images, only: [:index]

  namespace :api do 
    namespace :v1 do
      resources :auth, only: [:create]
    end
  end

  # resources  :users do 
  #   member do 
  #     get :confirm_email
  #   end
  # end

  root "posts#index"
  get "/", to: 'posts#index'
  get '/profile', to: 'users#profile'
  get 'luisdevblog/registration-confirmation/:confirmation_token', to: 'users#confirm_email'
  post '/draft', to:'posts#create'
  post '/publish', to:'posts#create'
  

  get "/index.html", to: 'users#prerender_service'
end
