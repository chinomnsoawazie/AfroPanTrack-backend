class ReportSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers 
  attributes :id, :user_id, :country, :state, :city, :nearest_landmark, :persons_involved, :description, :medical_attention_observed, :medical_attention_description, :can_we_follow_up, 

  def file_url
    return rails_blob_url(object.file)
  end 
end
