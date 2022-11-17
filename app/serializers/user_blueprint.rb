class UserBlueprint < Blueprinter::Base
    identifier :id
    fields :first_name, :last_name, :username, :bio

    view :extended do
      # fields :first_name, :last_name, :bio
      association :images, blueprint: UserImageBlueprint
    end
  
    view :private do
      fields :email, :private
      association :posts, blueprint: PostBlueprint, view: :extended
      association :images, blueprint: UserImageBlueprint
    end

end