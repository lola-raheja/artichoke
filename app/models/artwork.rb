class Artwork < ApplicationRecord
  belongs_to :user
  has_many :artwork_collections
end
