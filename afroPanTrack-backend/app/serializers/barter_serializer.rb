class BarterSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :item_description, :quantity_requested, :quantity_received, :category, 
  :country, :state, :city, :lga, :city_town_or_village, :nearest_landmark,
  :date_required, :done, :receiver_id, :date_done, :verified, :verified_by,
  :comments, :barter_receiver, :bids

  def barter_receiver
    if object.receiver_id
    HelperSerializer.new(User.find(object.receiver_id))
    end
  end

  def bids
    object.bids.map{|bid| BidSerializer.new(bid)}
  end
end
