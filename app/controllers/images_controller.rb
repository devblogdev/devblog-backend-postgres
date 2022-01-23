class ImagesController < ApplicationController
  skip_before_action :authorized, only: [:schedule_for_destruction]
  
  # GET /images
  def index
    profile_pictures = UserImage.all
    # profile_pictures = Image.all
    render json: ImageBlueprint.render(profile_pictures)
    # render json: ImageBlueprint.render(profile_pictures, view: :extended)
  end

  def schedule_for_destruction
    if urls.length > 0
      ImagesCleanupJob.perform_later(urls)
      render json: {images: "Server: #{urls.length} images scheduled for destruction"}, status: 200
    else
      render json: {images: "Server: No images scheduled for destruction"}, status: 200
    end
  end
      
  private 
  # Only allow a list of trusted parameters through.
  def urls
    params["urls"]
  end

  def image_params
    params.require(:image).permit(:url, :caption, :alt, :format, :name, :size, :s3key, :id, :user_ids)
  end
end
  