class SessionsController < ApplicationController
    # include AbstractController::Rendering
    # include ActionView::Layouts     # needed for rendering templates
    include ActionController::RequestForgeryProtection
    # helper_method :activate
    skip_before_action :authorized

    def omniauth_frontend
        user = User.from_omniauth(auth_frontend)
        # user = User.new
        # @auth = request.env
        if !user.provider.nil?
          token = encode_token({user_id: user.id})
          render json: { 
            user: UserBlueprint.render(user, view: :private),
            jwt: token
          }
          # render 'omni'
        else
          render json: { message: ["An account has already been created with the email #{user.email}. Please login using your email."] }, status: :unauthorized
          # render 'omni'
        end
    end



    # def omni
    #   render 'omni'
    # end

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



    # Most recnet controller code for Hybrid Omniauth gem
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


