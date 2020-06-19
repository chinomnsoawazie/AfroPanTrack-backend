class Barter < ApplicationRecord
  belongs_to :user
  has_many :bids
  #barter will have many bids
end
