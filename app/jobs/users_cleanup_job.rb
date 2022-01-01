class UsersCleanupJob < ApplicationJob
  queue_as :default

  def perform(email)
    user = User.find_by_email(email)
    puts "UsersCleanup Job called"
    user.delete if user && !user.email_confirmed        
  end
end
