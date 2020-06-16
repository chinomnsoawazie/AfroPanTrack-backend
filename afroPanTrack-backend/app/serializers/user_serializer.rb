class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :username, :email, :phone_no, :country, :state, :city, :lga, :street_address,
   :ban_status, :ban_date, :facebook_name, :twitter_handle, :email_confirmed, :admin, :moderator, :allowed_to_request, :allowed_to_report,
   :help_offers_made, :barter_user_bid_on, :barters_completed

   has_many :barters
   has_many :reports
   has_many :quarantine_centres
   has_many :helps

   def help_offers_made
      helpOffers = Help.all.select{|help| help.helper_id == object.id}
      return helpOffers.map{|offer| HelpOfferSerializer.new(offer)}
   end

   def barter_user_bid_on
      bids = Bid.all.select{|bid| bid.user_id == object.id}
      bids.map{|bid| bid.barter}
   end

   def barters_completed
      Barter.all.select{|barter| barter.receiver_id == object.id && barter.done == true}
   end

end
