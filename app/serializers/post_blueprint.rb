class PostBlueprint < Blueprinter::Base
    identifier :id
    fields :title, :body, :url, :coming_from, :category, :abstract, :status, :user_id
 
    view :extended do
      association :images, blueprint: ImageBlueprint
    end
  end