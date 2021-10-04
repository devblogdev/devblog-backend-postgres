class UserMailer < ActionMailer::Base
    default :from => 'luisdevblog@netlify.app'

    def registration_confirmation(user)
        @user = user
        mail(:to => user.email, :subject => "Registration Confirmation")
    end

end