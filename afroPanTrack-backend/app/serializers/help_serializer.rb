class HelpSerializer < ActiveModel::Serializer
  attributes :id, :description, :date_requested, :country, :state, :city, 
  :lga, :city_town_or_village, :nearest_landmark, :date_required, :helper_id,
  :done_status, :help_offer_date, :date_completed, :request_verified, :request_verified_by,
  :help_offer_verified, :help_offer_verified_by, :comments, :user_id, :helpers, :qty_requested

def helpers
  allHelperObjects = Helper.all.select{|helper| helper.help_id == object.id}
  # make an array of the user_ids from allHelperObjects
  allHelperObjectsUserIdArray = allHelperObjects.map{|helperObject| helperObject.user_id}
  # now create an array of the actual user object
  # helperUserObjectsArray = []
  # allHelperObjectsUserIdArray.each do |user_id|

  #   helperUserObjectsArray << User.find(user_id)
  # end


  helpersAndTheirHelp = []

  allHelperObjects.each do |helper|
    newHelperObject = {}
    newHelperObject["qty_offered"] = helper.qty_offered
    newHelperObject["helper"] = HelperSerializer.new(User.find(helper.user_id))
    helpersAndTheirHelp << newHelperObject

  end


  return helpersAndTheirHelp

  # return helperUserObjectsArray.map{|helper| HelperSerializer.new(helper)}
end

end