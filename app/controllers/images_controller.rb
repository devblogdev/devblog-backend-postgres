class ImagesController < ApplicationController
  skip_before_action :authorized, only: [:index]
  
  # GET /images
  def index
    # profile_pictures = Image.joins(:users)
    profile_pictures = Image.all
    render json: ImageBlueprint.render(profile_pictures)
    # render json: ImageBlueprint.render(profile_pictures, view: :extended)
  end
      
  private 
  # Only allow a list of trusted parameters through.
  def image_params
    params.require(:image).permit(:url, :caption, :alt, :format, :name, :size, :s3key, :id, :user_ids)
  end
end
  