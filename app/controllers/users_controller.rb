class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]
  skip_before_action :authorized, only: [:create, :index]

  def index
    # users = User.has_published_posts
    users = User.all
    render json: UserBlueprint.render(users, view: :private)
    # render json: UserBlueprint.render(users, view: :extended)
  end

  def show
    render json: @user
  end

  def profile
    # render json: UserBlueprint.render(user: current_user)
    render json: UserBlueprint.render(current_user, view: :private)
  end

  # This API uses Json Web Tokens (JWT) for user authentication; 
  # This controller action is when users sign up for fist time to app's frontend
  # A json web token is created and passes to the client side (the frontend)
  def create
    @user = User.new(user_params)
    if @user.save
      @token = encode_token(user_id: @user.id)
      render json: {user: @user, jwt: @token}, status: :created
    else
      render json: { errors: @user.errors.full_messages }, status: :not_acceptable
    end
  end

  def update
    # # byebug
    if @user.update(bio: "{}")
    # if  @user.update(user_params)
      render json: UserBlueprint.render(@user, view: :private)
    else 
      render json: @user.errors, status: :unprocessable_entity
    end
  end
    # if @user.update(user_params)
    #   render json: UserBlueprint.render(@user, view: :private)
    # else
    #   render json: @user.errors, status: :unprocessable_entity
    # end

        # byebug
    # if @user.update( private: user_params[:private] )
    #   if @user.images[0] && user_params[:images_attributes].empty?
    #     # byebug
    #     @user.images[0].destroy
    #     # @user.images = []
    #     render json: UserBlueprint.render(@user, view: :private)
    #   elsif @user.images[0] && !user_params[:images_attributes].empty?
    #     # byebug
    #     @user.images[0].update(user_params[:images_attributes][0])
    #     render json: UserBlueprint.render(@user, view: :private)
    #   elsif @user.images.empty? && !user_params[:images_attributes].empty?
    #     new_image = Image.create(user_params[:images_attributes][0])
    #     @user.images << new_image
    #     render json: UserBlueprint.render(@user, view: :private)
    #   else
    #     render json: UserBlueprint.render(@user, view: :private)
    #   end
    # else
    #   render json: @user.errors, status: :unprocessable_entity
    # end
  # end

  def destroy
    @user.destroy
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def user_params
    params.require(:user).permit(:email, :password, :first_name, :last_name, :bio,
      images_attributes: [:url, :caption, :alt, :format, :name, :size, :s3key, :id]
    )
  end
end
