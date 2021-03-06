class User < ApplicationRecord
    before_create :confirmation_token

    has_secure_password
    has_many :reports
    has_many :barters
    has_many :quarantine_centres
    has_many :helps
    validates_presence_of :username
    validates_uniqueness_of :username, :case_sensitive => true
    validates :password, length: { minimum: 6 }

    private
    def confirmation_token
        if self.confirm_token.blank? && self.admin != true
            self.confirm_token = "http://localhost:3000/users/confirm_email/" + SecureRandom.urlsafe_base64.to_s
        else
            self.confirm_token = nil
        end
    end

end
