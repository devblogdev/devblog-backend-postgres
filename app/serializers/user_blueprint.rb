class UserBlueprint < Blueprinter::Base
    identifier :id
    fields :first_name, :last_name, :email, :bio
  
    view :extended do
      association :posts, blueprint: PostBlueprint, view: :extended
    end
end