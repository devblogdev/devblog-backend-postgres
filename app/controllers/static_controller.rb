require 'rails/application_controller'

# class StaticController < Rails::ApplicationController
#   def index
#     render file: Rails.root.join('public', 'index.html')
#   end
# end


class StaticController < ActionController::API
    def index
      body = ApplicationController.new.render_to_string(inline: "ddsf", layout: 'mail')
    end
end
# body = ActionController::Renderer.for(ApplicationController).render(inline: model.body, layout: 'customer')