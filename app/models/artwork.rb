class Artwork < ApplicationRecord
  belongs_to :user
  has_many :artwork_collections, dependent: :destroy
  has_many :collections, through: :artwork_collections
  has_one_attached :photo

  validates :medium, inclusion: { in: ["painting", "photography", "sculpture", "prints", "work on paper", "design", "drawing", "installation", "film/video"] }
end
