class PostsController < ApplicationController
  before_action :set_post, only: [:show, :update, :destroy]
  skip_before_action :authorized, only: [:index]

  # GET /posts
  def index
    database_posts = Post.includes(:images).where(status: :published).order(created_at: :desc)
    # begin      
      new_york_times_posts = NewYorkTimes.new.section("world")
    # rescue 
      # render json: PostBlueprint.render(database_posts, view: :extended)
    # else
      posts = database_posts + new_york_times_posts
      render json: PostBlueprint.render(posts, view: :extended)
    # end
  end

  # GET /posts/1
  def show
    render json: @post
  end

  # POST /posts
  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    @post.author_name = current_user.full_name
    @post.build_slug if post_params[:status] == "published"
    if @post.save
      render json: PostBlueprint.render(@post, view: :extended)
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /posts/1
  def update
    # Store the status of the post to change its creation time when it gets published
    # Update all fields except for the images attributes field
    if @post.update(title: post_params[:title], body: post_params[:body], category: post_params[:category], abstract: post_params[:abstract], status: post_params[:status])
      if @post.status_previously_was == "draft" && post_params[:status] == "published"
        @post.build_slug
        # If the post is a draft that is being published, update the creation time to equal the published (updated) time 
        @post.created_at = @post.updated_at
        @post.save
      end
      # There are 4 cases regarding the cover image for a post
      # Case 1: If the post has a cover image, and the paramss do not include an image, delete the post image
      if @post.images[0] && post_params[:images_attributes].empty?
        @post.images = []
        render json: PostBlueprint.render(@post, view: :extended)
      # Case 2: If the post has a cover image, and the paramss do include an image, update the post image
      elsif @post.images[0] && !post_params[:images_attributes].empty?
        @post.images[0].update(post_params[:images_attributes][0])
        render json: PostBlueprint.render(@post, view: :extended)
      # Case 3: If the post does not have a cover image, and the paramss include an image, create the image for the post 
      elsif @post.images.empty? && !post_params[:images_attributes].empty?
        @post.images.create(post_params[:images_attributes][0])
        render json: PostBlueprint.render(@post, view: :extended)
      else
      # Last case: the post does not have a cover image, and the params do not include an image: just render the updated post
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
      params.require(:post).permit(:title, :body, :category, :coming_from, :abstract, :url, :user_id, :status, :id, :author_name,
        images_attributes: [:url, :caption, :alt, :format, :name, :size, :s3key, :id]
      )
    end
end
