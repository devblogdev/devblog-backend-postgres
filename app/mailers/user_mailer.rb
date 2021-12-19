class UserMailer < ApplicationMailer
    # default :from => 'lmmartinez3312@gmail.com'
    default :from => 'DevBlog Support<support@devblog.dev>'

    def registration_confirmation(user)
        @user = user
        mail(:to => user.email, :subject => "Registration Confirmation")
    end

end