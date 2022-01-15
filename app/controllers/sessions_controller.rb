class SessionsController < ApplicationController
    # include AbstractController::Rendering
    # include ActionView::Layouts     # needed for rendering templates
    # include HTTParty
    # include ActionController::RequestForgeryProtection
    # require 'net/http'
    # base_uri "http://localhost:3000"
    # helper_method :activate
    skip_before_action :authorized

    def omniauth_frontend
        user = User.from_omniauth(auth_frontend)
        if !user.provider.nil?
          token = encode_token({user_id: user.id})
          render json: { user: user, jwt: token}, status: :accepted
        else
          render json: { message: ["An account has already been created with the email #{user.email}. Please login using your email."] }, status: :unauthorized
        end
    end

    # To be used later; potentially
    # def omni
    #     @author = User.first
    #     render "omni"
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

    # This si a view method
    # def activate
    #     # @hello = 'console.log("Hello")'
    #     @author = User.first
    #     @hello = 'console.log( document.getElementById("myForm").submit() )'
    #     render 'omni'
    # end

    # def make_it_happen
    #     response = self.class.post('http://localhost:3000/auth/google_oauth2') do |req|
    #         req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
    #         req.headers['X-CSRF-Token'] = form_authenticity_token
    #     end
    # end

    # response = HTTParty.post('http://localhost:3000/auth/google_oauth2', 
    #     :headers => { 'Content-Type' => 'application/x-www-form-urlencoded', 'X-CSRF-Token' => form_authenticity_token }
    # )

    # "https://accounts.google.com/o/oauth2/auth/oauthchooseaccount?access_type=offline&client_id=214498708920-p018oltd0uki26s2csoltescdi8f6gl6.apps.googleusercontent.com&redirect_uri=http%3A%2F%2Flocalhost%3A3000%2Fauth%2Fgoogle_oauth2%2Fcallback&response_type=code&scope=email%20profile&state=19502a64d70baa655d1aaecd0902091158755cdbff68a83b&flowName=GeneralOAuthFlow"
    # https://accounts.google.com/o/oauth2/auth/oauthchooseaccount?
    # access_type=offline&
    # client_id=214498708920-p018oltd0uki26s2csoltescdi8f6gl6.apps.googleusercontent.com&r
    # edirect_uri=http%3A%2F%2Flocalhost%3A3000%2Fauth%2Fgoogle_oauth2%2Fcallback&
    # response_type=code&
    # scope=email%20profile&
    # state=19502a64d70baa655d1aaecd0902091158755cdbff68a83b&
    # flowName=GeneralOAuthFlow