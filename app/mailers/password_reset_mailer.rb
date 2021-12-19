class PasswordResetMailer < ApplicationMailer
    default :from => 'DevBlog Suport<support@devblog.dev>'

    def password_reset(user)
        @user = user
        mail(:to => user.email, :subject => "Password Reset")
    end
end
