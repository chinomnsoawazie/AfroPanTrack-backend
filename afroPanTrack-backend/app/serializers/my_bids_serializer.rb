class MyBidsSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :qty_offered, :closed_status, :barter_item, :bids_by_others, :requestor

  def barter_item
    object.barter
  end

  def bids_by_others
    object.barter.bids.map{|bid| BidSerializer.new(bid)}
  end

  def requestor
    HelperSerializer.new(User.find(object.barter.user_id))
  end
end
