class Api::V1::AuthController < ApplicationController
    skip_before_action :authorized, only: [:create, :omniauth]

    # This controller action is used for noraml user login (not OAuth)
    def create
      @user = User.find_by(email: user_login_params[:email].downcase)
      if @user && @user.authenticate(user_login_params[:password]) && @user.email_confirmed 
        exp = Time.now.to_i + 3600
        token = encode_token({ user_id: @user.id, exp: exp })
        # render json: { user: @user, jwt: token, exp: exp }, status: :accepted
        render json: { 
          user: UserBlueprint.render(@user, view: :private),
          jwt: token,
          exp: exp
        }
      else
        render json: { errors: ['Invalid email or password'] }, status: :unauthorized
      end
    end


    private
    def user_login_params
      params.require(:user).permit(:email, :password)
    end

end