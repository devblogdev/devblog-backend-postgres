class UserBlueprint < Blueprinter::Base
    identifier :id
    fields :first_name, :last_name, :bio

    view :extended do
      association :images, blueprint: UserImageBlueprint
    end
  
    view :private do
      fields :email
      association :posts, blueprint: PostBlueprint, view: :extended
      association :images, blueprint: UserImageBlueprint
    end

end