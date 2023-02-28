class Artwork < ApplicationRecord
  belongs_to :user
  has_many :artwork_collections, dependent: :destroy
  has_many :collections, through: :artwork_collections
  has_one_attached :photo

  validates :medium, inclusion: { in: ["painting", "photography", "sculpture", "prints", "work on paper", "design", "drawing", "installation", "film/video"] }

  include PgSearch::Model
  pg_search_scope :search_by_medium, against: [:medium], using: {tsearch: {prefix: true}}
  pg_search_scope :search_by_location, against: [:location], using: {tsearch: {prefix: true}}
end
