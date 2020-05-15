class UserMailer < ActionMailer::Base
    default :from => "do-not-reply@mydomain.com"

    def registration_confirmation(user)
        @user = user
        mail(:to => "#{@user.first_name} <#{@user.email}>", subject: "Registration Confirmation for COVID-19-Africa web app")
    end

    
end
