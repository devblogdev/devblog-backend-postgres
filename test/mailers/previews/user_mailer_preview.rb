# Access the preview at rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
    def registration_confirmation
        user = User.first
        UserMailer.registration_confirmation(user)
    end

    def password_reset
        user = User.first
        UserMailer.password_reset(user)
    end
end