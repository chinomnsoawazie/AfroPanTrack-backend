class HelperSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :username, :email, :phone_no, :country, :state, :city, :lga, :street_address,
  :ban_status, :ban_date, :facebook_name, :twitter_handle,  :admin, :moderator, :allowed_to_request, :allowed_to_report
end
