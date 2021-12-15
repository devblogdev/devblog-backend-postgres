class UserMailer < ApplicationMailer
    default :from => 'devblog.dev'

    def registration_confirmation(user)
        @user = user
        mail(:to => user.email, :subject => "Registration Confirmation")
    end

end