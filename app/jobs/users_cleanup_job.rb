class UsersCleanupJob < ApplicationJob
  queue_as :default

  def perform(email)
    user = User.find_by_email(email)
    user.delete if user && !user.email_confirmed        
  end
end
