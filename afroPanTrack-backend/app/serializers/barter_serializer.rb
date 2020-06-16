class BarterSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :item_description, :quantity, :category, 
  :country, :state, :city, :lga, :city_town_or_village, :nearest_landmark,
  :date_required, :done, :receiver_id, :date_done, :verified, :verified_by,
  :comments
end
