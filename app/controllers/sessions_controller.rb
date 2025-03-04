class SessionsController < ApplicationController
    # include AbstractController::Rendering
    # include ActionView::Layouts     # needed for rendering templates
    include ActionController::RequestForgeryProtection
    skip_before_action :authorized

    def omniauth_frontend
        if params['provider'] == 'google'
          data = GoogleOAuthManager::RetrieveUserData.call(auth_frontend)
        end
        if data.errors.any?
          (render json: { message: data.errors }, status: :unauthorized) and return
        end
        user_data = data.user_data
        user_data['provider'] = params['provider']
        user = User.from_omniauth(user_data)
        if !user.provider.nil?
          token = encode_token({user_id: user.id, exp: user_data['exp']})
          render json: { 
            user: UserBlueprint.render(user, view: :private),
            jwt: token
          }
        elsif user.errors.any?
          render json: { errors: user.errors.full_messages }, status: :not_acceptable
        else
          render json: { message: ["An account has already been created with the email #{user.email}. Please login using your email."] }, status: :unauthorized
        end
    end

    # def tokens
    #   code = params['code']
    #   begin
    #     omni_client = OmniauthRequest.new(code, 'google')
    #     tokens = omni_client.request_tokens     # One external API call
    #     access_token = tokens['access_token']
    #     user_data = omni_client.request_user_data(access_token)   # Another external API call
    #     render json: { user: user_data }
    #   rescue Exception => e
    #     render json: { error:  e }
    #   end
    # end

  # This code will be used at a later time as part of  
  # releasing the Hybrid Omniauth gem for performing hybrid OAuth2 process 
  # (client sends OAuth2 code from provider and server retrieves access and refresh tokens using the code)
    # def tokens
    #   code = params['code']
    #   begin
    #     omni_client = MyOmniauth::OmniauthRequest.new('google')
    #     auth_response = omni_client.retrieve_user_data(code)
    #     puts auth_response
    #     render json: { user: auth_response[:user_data] }
    #   rescue Exception => e
    #     render json: { error: e }
    #   end
    # end

    private 
    def auth_frontend
        params["session"]
    end

    # TO be used later
    # def auth
    #     request.env['omniauth.auth']
    # end
end


