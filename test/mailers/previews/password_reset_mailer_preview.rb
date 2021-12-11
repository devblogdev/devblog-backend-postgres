# Preview all emails at http://localhost:3000/rails/mailers/password_reset_mailer
class PasswordResetMailerPreview < ActionMailer::Preview
    def password_reset
        user = User.first
        PasswordResetMailer.password_reset(user)
    end

end
