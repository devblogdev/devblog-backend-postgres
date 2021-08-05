
class PostsController < ApplicationController
  before_action :set_post, only: [:show, :update, :destroy]
  skip_before_action :authorized, only: [:index]

  # GET /posts
  def index
    database_posts = Post.where(status: :published).order(created_at: :desc)
    # byebug
    begin      
      new_york_times_posts = NewYorkTimes.new.section("world")
    rescue 
      render json: PostBlueprint.render(database_posts, view: :extended)
    else
      posts = new_york_times_posts.concat(database_posts)
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
    # byebug
    if @post.save
      render json: @post, status: :created, location: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /posts/1
  def update
    if @post.update(post_params)
      render json: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /posts/1
  def destroy
    @post.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:title, :body, :category, :coming_from, :abstract, :url, :user_id, :status)
    end
end
