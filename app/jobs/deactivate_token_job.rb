class DeactivateTokenJob < ApplicationJob
    queue_as :default

    def perform(token)
        user = User.find_by_confirm_token(token) 
        puts "DeactivateToken Job called"
        user.update(confirm_token: nil) if user 
    end

end