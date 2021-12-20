# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  resources :comments
  resources :posts, only: [:index, :create, :update, :destroy]
  resources :users, only: [:index, :create, :update]
  resources :images, only: [:index]

  # Local Login
  namespace :api do 
    namespace :v1 do
      # Local Login
      resources :auth, only: [:create]
      # Omniauth Login
      post "auth/:provider/callback", to: "auth#omniauth"
    end
  end

  # Omniauth Login
  # get '/auth/:provider/callback', to: 'sessions#omniauth'

  # resources  :users do 
  #   member do 
  #     get :confirm_email
  #   end
  # end
  

  # root "posts#index"
  # get "/", to: 'posts#index'
  get '/profile', to: 'users#profile'
  
  # New use sign up protocol
  post '/registration-confirmation/:confirm_token', to: 'users#confirm_email'

  # Password reset protocol
  # post '/password-reset', to: 'users#send_password_reset_link'
  # post '/password-reset/:confirm_token', to: 'users#clicked_password_reset_link'
  # post '/password-reset/email', to: 'users#reset_password'

  post '/draft', to:'posts#create'
  post '/publish', to:'posts#create'
  
  
  
  # Prerender service routes
  get '/static', to: 'dynamic_meta_tags#index'

  # get '*other', to: 'static#index'
end
