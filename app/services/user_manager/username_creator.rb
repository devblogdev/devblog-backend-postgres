module UserManager
    class UsernameCreator < ApplicationService
        attr_reader :fullname
        
        def initialize(fullname)
          @fullname = fullname
        end
      
        def call
            username = generate_username(@fullname)
            find_unique_username(username)
        end

        def generate_username(fullname)
            ActiveSupport::Inflector.transliterate(fullname)
                .downcase.parameterize.gsub(/[_-]/, "")
        end

        def find_unique_username(username)
            taken_usernames = User
                .where("username LIKE ?","#{username}%")
                .pluck(:username)
            
            return username if !taken_usernames.include?(username)

            count = 2
            while true
                new_username = "#{username}#{count}"
                return new_username if ! taken_usernames.include?(new_username)
                count +=1
            end
        end

    end
end