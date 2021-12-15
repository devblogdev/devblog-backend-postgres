class PasswordResetMailer < ApplicationMailer
    default :from => 'em3611.devblog.dev'

    def password_reset(user)
        @user = user
        mail(:to => user.email, :subject => "Password Reset")
    end
end
