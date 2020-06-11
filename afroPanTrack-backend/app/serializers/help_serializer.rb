class HelpSerializer < ActiveModel::Serializer
  attributes :id, :description, :date_requested, :country, :state, :city, 
  :lga, :city_town_or_village, :nearest_landmark, :date_required, :helper_id,
  :done_status, :help_offer_date, :date_completed, :request_verified, :request_verified_by,
  :help_offer_verified, :help_offer_verified_by, :comments, :requestor, :helpers

def requestor
  return UserSerializer.new(User.find(object.requestor_id))
end

def helpers
  # Find all Helper objects who with help_id matching this object instance
  allHelperObjects = Helper.all.select{|helper| helper.help_id == object.id}
  # make an array of the user_ids from allHelperObjects
  allHelperObjectsUserIdArray = allHelperObjects.map{|helperObject| helperObject.user_id}
  # now create an array of the actual user object
  helperUserObjectsArray = []
  allHelperObjectsUserIdArray.each do |user_id|
    helperUserObjectsArray << User.find(user_id)
  end

  # user = User.find(object.requestor_id)
  # helpers_id = Helper.all.select{|helper| helper.user_id == user_id}
  # @helpers = User.all.select{|user| user.id == object.helper_id}
  # return @helpers.map{|helper| UserSerializer.new(helper)}
#
  return helperUserObjectsArray.map{|helper| UserSerializer.new(helper)}
end

end
