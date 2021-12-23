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
  
  # New user sign up protocol
  post '/registration-confirmation/:confirm_token', to: 'users#confirm_email'

  # Password reset protocol
  post '/password-reset', to: 'users#send_password_reset_link'    # When the user submits his/her email for password reset; the controller sends an email to user
  post '/password-reset/:confirm_token', to: 'users#clicked_password_reset_link'     # When the user clicks on the link sent by controller, the front end sends a post request to obtian user's email
  post '/reset-password', to: 'users#reset_password'    # When the user submits his/her new password form, the controller updates the user's password

  post '/draft', to:'posts#create'
  post '/publish', to:'posts#create'
  
  
  
  # Prerender service routes
  get '/static', to: 'dynamic_meta_tags#index'

  # get '*other', to: 'static#index'
end
