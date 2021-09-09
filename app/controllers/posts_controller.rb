
class PostsController < ApplicationController
  before_action :set_post, only: [:show, :update, :destroy]
  skip_before_action :authorized, only: [:index]

  # GET /posts
  def index
    # database_posts = Post.where(status: :published).order(created_at: :desc)
    database_posts = Post.includes(:images).where(status: :published).order(created_at: :desc)
    begin      
      new_york_times_posts = NewYorkTimes.new.section("world").take(25)
    rescue 
      render json: PostBlueprint.render(database_posts, view: :extended)
    else
      # byebug
      posts = database_posts + new_york_times_posts
      render json: PostBlueprint.render(posts, view: :extended)
    end
  end

  # GET /posts/1
  def show
    render json: @post
  end

  # POST /posts
  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      render json: PostBlueprint.render(@post, view: :extended)
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /posts/1
  def update
    # byebug
    if @post.update(title: post_params[:title], body: post_params[:body], category: post_params[:category], abstract: post_params[:abstract], url: post_params[:url], status: post_params[:status])
      if @post.images[0] && post_params[:images_attributes].empty?
        # @post.images[0].delete
        @post.images = []
        render json: PostBlueprint.render(@post, view: :extended)
      elsif @post.images[0] && !post_params[:images_attributes].empty?
        # byebug
        @post.images[0].update(post_params[:images_attributes][0])
        render json: PostBlueprint.render(@post, view: :extended)
      elsif @post.images.empty? && !post_params[:images_attributes].empty?
        @post.images.create(post_params[:images_attributes][0])
        # new_image = Image.create(post_params[:images_attributes][0])
        # @post.images << new_image
        render json: PostBlueprint.render(@post, view: :extended)
      else
        render json: PostBlueprint.render(@post, view: :extended)
      end
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /posts/1
  def destroy
    if @post.destroy
      render json: "Post #{@post.id} successfully deleted"
    else
      render json: @post.errors, status: unprocessable_entity
    end
    # if @post.images.empty?
    #   @post.destroy
    #   render json: "Post #{@post.id} successfully deleted"
    # else
    #   @post.images[0].delete
    #   @post.destroy
    #   render json: "Post #{@post.id} successfully deleted"
    # end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:title, :body, :category, :coming_from, :abstract, :url, :user_id, :status, :id,
        images_attributes: [:url, :caption, :alt, :format, :name, :size, :s3key, :id]
      )
    end
end
