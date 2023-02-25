class ArtworkCollection < ApplicationRecord
  belongs_to :collection
  belongs_to :artwork
  validates_uniqueness_of :artwork_id, scope: :collection_id
end
