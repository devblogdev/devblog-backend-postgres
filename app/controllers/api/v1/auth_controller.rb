class Api::V1::AuthController < ApplicationController
    skip_before_action :authorized, only: [:create]

    # This controller action is used for user login
    def create
        # byebug
      @user = User.find_by(email: user_login_params[:email])
    #   byebug
      if @user && @user.authenticate(user_login_params[:password])
        token = encode_token({user_id: @user.id})
        render json: { user: @user, jwt: token}, status: :accepted
      else
        render json: { message: 'Ivalid username or password'}, status: :unauthorized
      end
    end

    private
    def user_login_params
      params.require(:user).permit(:email, :password)
    end
end