class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]
  skip_before_action :authorized, only: [
    :create, 
    :index, 
    :confirm_email, 
    :send_password_reset_link,
    :clicked_password_reset_link,
    :reset_password
  ]

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
      UsersCleanupJob.set(wait: 10.seconds).perform_later(@user.email)
      UserMailer.registration_confirmation(@user).deliver_now
      render json: { email: @user.email, message: ["Please confirm your email address to continue"] }, status: :accepted
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
    else
      render json: ["Sorry, user does not exist"], status: :not_acceptable
    end
  end

  def send_password_reset_link
    @user = User.find_by_email(params[:email].downcase)
    @user.confirmation_token if @user
    if @user && @user.email_confirmed && @user.save
      DeactivateTokenJob.set(wait: 10.seconds).perform_later(@user.confirm_token)
      UserMailer.password_reset(@user).deliver_now
      render json: { message: ["Password reset instructions sent to email"], email: @user.email}, status: :accepted
    else
      render json: { errors: ['This email is not registered at DevBlog. Please try signing up instead'] }, status: :not_acceptable
    end
  end

  def clicked_password_reset_link
    user = User.find_by_confirm_token(params[:confirm_token])
    if user && user.email_confirmed && user.update(confirm_token: nil)
      render json: { email: user.email, message: ["Password reset link properly consumed"]}
    else
      render json: ["This links has already been used. Please try password reset again"], status: :not_acceptable
    end
  end

  def reset_password
    user = User.find_by_email(params[:email].downcase)
    if user && user.update(password: params[:password])
      render json: ["Password has been successfully reset"], status: :accepted
    else
      render json: { errors: user ? user.errors.full_messages : ["An error occurred. Please try the process again"] }, status: :not_acceptable
    end
  end

  def update
    # Temp code for fixing email verification
    u = User.find_by_email("venid.sedientos01@gmail.com")
    u.delete if u
    # Temp code for fixing email verification
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
