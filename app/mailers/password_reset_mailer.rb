class PasswordResetMailer < ApplicationMailer
    default :from => 'luisdevblog@netlify.app'
    
    def password_reset(user)
        @user = user
        mail(:to => user.email, :subject => "Password Reset")
    end
end
