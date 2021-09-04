class ImageBlueprint < Blueprinter::Base
    identifier :id
    fields :url, :caption, :alt, :format, :name, :size, :s3key

    view :extended do 
      field :user_ids
    end
end