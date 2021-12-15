class UserMailer < ApplicationMailer
    default :from => 'em3611.devblog.dev'

    def registration_confirmation(user)
        @user = user
        mail(:to => user.email, :subject => "Registration Confirmation")
    end

end