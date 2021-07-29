class UsersController < ApplicationController
    before_action :set_user, only: [:show, :update, :destroy]
    skip_before_action :authorized, only: [:create, :index]
  
    def index
      users = User.all  
      render json: users
    end
  
    def show
      render json: @user
    end
  
    def profile
      # render json: UserBlueprint.render(user: current_user)
      render json: {user: current_user.slice(:username, :email, :first_name, :last_name, :bio)}, status: :accepted
    end
  
    # This API uses JSON Web Tokens (JWT) for user authentication; 
    # This controller action is when users sign up for fist time to app's frontend
    # A json web token is created and passes to the client side (the frontend)
    def create
      @user = User.new(user_params)
      if @user.save
        @token = encode_token(user_id: @user.id)
        render json: {user: @user, jwt: @token}, status: :created
      else
        render json: { error: 'failed to create user' }, status: :not_acceptable
      end
    end
  
    def update
      if @user.update(user_params)
        render json: @user
      else
        render json: @user.errors, status: :unprocessable_entity
      end
    end
  
    def destroy
      @user.destroy
    end
  
    private
    
      def set_user
        @user = User.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def user_params
        params.require(:user).permit(:username, :email, :password, :bio, :avatar)
      end
  end
  