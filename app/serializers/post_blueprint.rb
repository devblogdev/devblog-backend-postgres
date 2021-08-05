class PostBlueprint < Blueprinter::Base
    identifier :id
    fields :title, :body, :url, :coming_from, :category, :abstract, :status
  
    view :extended do
      association :images, blueprint: ImageBlueprint
    end
  end