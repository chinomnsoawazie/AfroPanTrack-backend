# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
    def registration_confirmation
        UserMailer.with(user: User.first).registration_confirmation
    end
end
