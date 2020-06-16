class QuarantineCentreSerializer < ActiveModel::Serializer
  attributes :id ,:user_id, :name, :country, :state, :city, :lga,
  :city_town_or_village, :nearest_landmark, :lat, :lng, :phone, :email,
  :verified, :verified_by, :verification_notes
end
