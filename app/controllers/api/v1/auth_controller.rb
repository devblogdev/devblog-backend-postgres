class Api::V1::AuthController < ApplicationController
    skip_before_action :authorized, only: [:create, :omniauth]

    # This controller action is used for noraml user login (no OAuth)
    def create
      @user = User.find_by(email: user_login_params[:email].downcase)
      if @user && @user.authenticate(user_login_params[:password]) && @user.email_confirmed 
        token = encode_token({user_id: @user.id})
        render json: { user: @user, jwt: token}, status: :accepted
      else
        render json: { errors: ['Invalid email or password'] }, status: :unauthorized
      end
    end


    private
    def user_login_params
      params.require(:user).permit(:email, :password)
    end

end