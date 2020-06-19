class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :username, :email, :phone_no, :country, :state, :city, :lga, :street_address,
   :ban_status, :ban_date, :facebook_name, :twitter_handle, :email_confirmed, :admin, :moderator, :allowed_to_request, :allowed_to_report,
   :help_offers_made, :barter_user_bid_on, :barters_completed

   has_many :barters
   has_many :reports
   has_many :quarantine_centres
   has_many :helps

   def help_offers_made
      Help.all.select{|help| help.helper_id == object.id}.map{|offer| HelpOfferSerializer.new(offer)}
   end

   def barter_user_bid_on
      Bid.all.select{|bid| bid.user_id == object.id}.map{|bid| BidSerializer.new(bid)}
   end

   def barters_completed
      # Items bid and recieved
      closedRecievedBarters = Barter.all.select{|barter| barter.receiver_id == object.id && barter.done == true}

      # Items requested and recieved
      closedRequestedBarters = Barter.all.select{|barter| barter.user_id == object.id && barter.done == true}


      # Items bid and lost
      allMyBidsOnClosedBids = Bid.all.select{|bid| bid.user_id == object.id && bid.closed_status == true}
      bartersOfMyBidsOnClosedBids = allMyBidsOnClosedBids.map{ |bid| bid.barter}
      lostBarters = bartersOfMyBidsOnClosedBids.select{|barter| barter.receiver_id != object.id && barter.done == true}


      closedRecievedBartersWithDetails = []
      closedRecievedBarters.each do |barter|
         newBarterObject = {}
         newBarterObject['barter'] = barter
         newBarterObject['requestor'] = HelperSerializer.new(User.find(barter.user_id))
         closedRecievedBartersWithDetails << newBarterObject
      end


      closedRequestedBartersWithDetails = []
      closedRequestedBarters.each do |barter|
         newBarterObject = {}
         newBarterObject['barter'] = barter
         newBarterObject['receiver'] = HelperSerializer.new(User.find(barter.receiver_id))
         closedRequestedBartersWithDetails << newBarterObject
      end

      lostBartersWithDetails = []
      lostBarters.each do |barter|
         newBarterObject = {}
         newBarterObject['barter'] = barter
         newBarterObject['requestor'] = HelperSerializer.new(User.find(barter.user_id))
         lostBartersWithDetails << newBarterObject
      end



      allMyCompletedBarters = []
      allMyCompletedBarters << closedRecievedBartersWithDetails
      allMyCompletedBarters << closedRequestedBartersWithDetails
      allMyCompletedBarters << lostBartersWithDetails

      return allMyCompletedBarters



      # return closedBartersWithDetails
   end

end
