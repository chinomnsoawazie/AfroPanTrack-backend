class Report < ApplicationRecord
    belongs_to :user
    has_one_attached :file, dependent: :destroy
end
