class BidSerializer < ActiveModel::Serializer
  attributes :id, :barter_id, :qty_offered, :closed_status, :bid_owner, :barter_item, :bids_by_others
  
  def bid_owner
    HelperSerializer.new(User.find(object.user_id))
  end

  def barter_item
    Barter.find(object.barter_id)
  end

  def bids_by_others
    bidsByOthers = Bid.all.select{|bid| bid.barter_id == object.barter_id}

    bidsByOthersArray = []

    bidsByOthers.each do |bid|
      newBidObject = {}
      newBidObject["qty_offered"] = bid.qty_offered
      newBidObject["bidder"] = HelperSerializer.new(User.find(bid.user_id))
      bidsByOthersArray << newBidObject

    end

    return bidsByOthersArray

  end
end
