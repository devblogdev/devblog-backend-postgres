# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  resources :comments
  resources :posts, only: [:index, :create, :update, :destroy] do
    collection do
      get 'external'
    end
  end
  resources :users, only: [:index, :create, :update]
  
  # Local Login
  namespace :api do 
    namespace :v1 do
      # Local Login
      resources :auth, only: [:create]
    end
  end

  get '/omni', to: 'sessions#omni'
  get '/auth/:provider/callback', to: 'sessions#omniauth_frontend'

  # Google OAuth2 login
# This route does not uses the omniauth gem, it simply processes the info
# sent to the route (currently DevBlog Frontend retrieves the user's OAuth2 Google info)
  post 'omniauth/:provider/callback', to: 'sessions#omniauth_frontend'
# This will be a future route used for completing the Google OAuth2 process
# server-side (client sends a Google access code, and server uses access code 
# to retrieve user's Google profile; this way the server will be able to read the expiration time for the 
# access token and refresh token provided by Google, and automatically refresh the tokens or logout user if tokens become invalid)
  # post "/tokens", to: 'sessions#tokens'
  
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
  
  post '/images/schedule-for-destruction', to: 'images#schedule_for_destruction'
  # Prerender service routes
  get '/static', to: 'sessions#omni'
  # get '*other', to: 'static#index'
end
