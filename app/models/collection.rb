class Collection < ApplicationRecord
  has_many :artwork_collections, dependent: :destroy
  has_many :artworks, through: :artwork_collections
  has_one_attached :photo

  include PgSearch::Model
  multisearchable against: [:title, :description]
end
