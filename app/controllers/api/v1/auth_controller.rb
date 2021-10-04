class Api::V1::AuthController < ApplicationController
    skip_before_action :authorized, only: [:create]

    # This controller action is used for user login
    def create
      @user = User.find_by(email: user_login_params[:email].downcase)
      if @user && @user.authenticate(user_login_params[:password])
        token = encode_token({user_id: @user.id})
        render json: { user: @user, jwt: token}, status: :accepted
      else
        render json: { errors: ['Invalid email or password'] }, status: :unauthorized
      end
    end
    # def create
    #   @user = User.find_by(email: user_login_params[:email].downcase)
    #   if @user && @user.authenticate(user_login_params[:password]) 
    #     if @user.email_confirmed
    #       token = encode_token({user_id: @user.id})
    #       render json: { user: @user, jwt: token}, status: :accepted
    #     else
    #       render json: ["Please activate your account by following the instructions in the account confirmatino email you received."]
    #     end
    #   else
    #     render json: { errors: ['Invalid email or password'] }, status: :unauthorized
    #   end
    # end

    private
    def user_login_params
      params.require(:user).permit(:email, :password)
    end
end