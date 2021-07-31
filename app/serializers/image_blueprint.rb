class ImageBlueprint < Blueprinter::Base
    identifier :id
    fields :url, :caption, :alt, :format 
end