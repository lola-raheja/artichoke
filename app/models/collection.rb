class Collection < ApplicationRecord
  has_many :artwork_collections
  has_many :artworks, through: :artwork_collections
  has_one_attached :photo
end
