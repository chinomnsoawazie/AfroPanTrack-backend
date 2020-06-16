class HelpOfferSerializer < ActiveModel::Serializer
  attributes :id, :description, :date_requested, :help_offer_date, :date_required,
  :help_offer_verified, :help_offer_verified_by, :helper, :qty_requested

  def helper
    HelperSerializer.new(User.find(object.helper_id))
  end

end