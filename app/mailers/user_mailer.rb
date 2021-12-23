class UserMailer < ApplicationMailer
    # default :from => 'lmmartinez3312@gmail.com'
    default :from => 'DevBlog Support<support@devblog.dev>'
    # IMPORTANT NOTE: In development, the emails contain the domina 'localhost: 8001', however, the working port in development is 8000; 
    # change the 8001 to 8000
    def registration_confirmation(user)
        @user = user
        mail(:to => user.email, :subject => "Registration Confirmation")
    end

    def password_reset(user)
        @user = user
        mail(:to => user.email, :subject => "Password Reset")
    end

end