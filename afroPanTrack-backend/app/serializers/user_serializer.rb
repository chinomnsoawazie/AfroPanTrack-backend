class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :username, :email, :phone_no, 
  :country, :state, :street_address, :facebook_name, :twitter_handle, 
  :email_confirmed, :confirm_token, :admin, :moderator, :allowed_to_request, :allowed_to_report
end
