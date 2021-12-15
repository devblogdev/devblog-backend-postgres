class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]
  skip_before_action :authorized, only: [:create, :index, :confirm_email]

  def index
    users = User.has_published_posts.includes(:images)
    render json: UserBlueprint.render(users, view: :extended)
  end

  def show
    render json: @user
  end

  def profile
    render json: UserBlueprint.render(current_user, view: :private)
  end

  # This API uses Json Web Tokens (JWT) for user authentication; 
  # This controller action is when users sign up for fist time to app's frontend
  # A json web token is created and passes to the client side (the frontend)
  # def create
  #   @user = User.new(user_params)
  #   if @user.save
  #     @token = encode_token(user_id: @user.id)
  #     render json: {user: @user, jwt: @token}, status: :created
  #   else
  #     render json: { errors: @user.errors.full_messages }, status: :not_acceptable
  #   end
  # end

  def create
    @user = User.new(user_params)
    @user.confirmation_token
    if @user.save
      # byebug
      UserMailer.registration_confirmation(@user).deliver_now
      # @token = encode_token(user_id: @user.id)
      render json: { email: @user.email, message: ["Please confirm your email address to continue"] }, status: :accepted
      # render json: {user: @user, jwt: @token}, status: :created
    else
      render json: { errors: @user.errors.full_messages }, status: :not_acceptable
    end
  end

  def confirm_email
    user = User.find_by_confirm_token(params[:confirm_token])
    if user
      user.email_activate
      @token = encode_token(user_id: user.id)
      render json: {user: user, jwt: @token}, status: :created
      # render json: ["Welcome to DevBlog! Your email has been confirmed. Please log in to continue."]
    else
      render json: ["Sorry, user does not exist"], status: :not_acceptable
    end
  end

  def update
    if @user.update( bio: user_params[:bio] )      
      if @user.images[0] && user_params[:images_attributes].empty?
        # @user.images[0].destroy
        @user.images = []
        render json: UserBlueprint.render(@user, view: :private)
      elsif @user.images[0] && !user_params[:images_attributes].empty?
        @user.images[0].update(user_params[:images_attributes][0])
        render json: UserBlueprint.render(@user, view: :private)
      elsif @user.images.empty? && !user_params[:images_attributes].empty?
        @user.images.create(user_params[:images_attributes][0])
        render json: UserBlueprint.render(@user, view: :private)
      else
        render json: UserBlueprint.render(@user, view: :private)
      end
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
    params.require(:user).permit(
      :email, 
      :password, 
      :first_name, 
      :last_name, 
      :email_confirmed, 
      :confirm_token, 
      :bio => {}, 
      :private => {},
      images_attributes: [:url, :caption, :alt, :format, :name, :size, :s3key, :id]
    )
  end
end
