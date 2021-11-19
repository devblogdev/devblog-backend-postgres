require 'rails/application_controller'

# class StaticController < Rails::ApplicationController
#   def index
#     render file: Rails.root.join('public', 'index.html')
#     @page_title = "title from static controller"
#   end
# end

# class PagesController < Rails::ApplicationController
    
#   def index
#     render :layout=> 'pages'
#     @page_title = "title from static controller"
#   end
# end


# class PagesController < ActionController::API
#     def index
#       body = ActionController::Renderer.for(ApplicationController).render(layout: 'pages')
#     end
# end


# class StaticController < ActionController::API
#     def index
#       body = ApplicationController.new.render_to_string(inline: "ddsf", layout: 'pages')
#     end
# end
# body = ActionController::Renderer.for(ApplicationController).render(inline: model.body, layout: 'customer')

class DynamicMetaTagsController < ActionController::API
  include AbstractController::Rendering
  include ActionView::Layouts
  append_view_path "#{Rails.root}/app/views/dynamic_meta_tags"

  def index
    @dynamic = Post.first.abstract
    render "index"
  end
end

