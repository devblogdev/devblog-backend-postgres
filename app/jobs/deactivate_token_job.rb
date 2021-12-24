class DeactivateTokenJob < ApplicationJob
    queue_as :default

    def perform(token)
        user = User.find_by_confirm_token(token) 
        user.update(confirm_token: nil) if user 
    end

end