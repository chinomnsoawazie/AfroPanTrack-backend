class Help < ApplicationRecord
    belongs_to :user
    has_many :helpers
end
