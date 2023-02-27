class Artwork < ApplicationRecord
  belongs_to :user
  has_many :artwork_collections
  has_many :collections, through: :artwork_collections
  has_one_attached :photo
end
