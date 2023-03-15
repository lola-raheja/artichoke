class Artwork < ApplicationRecord
  belongs_to :user
  belongs_to :medium
  has_many :artwork_collections, dependent: :destroy
  has_many :collections, through: :artwork_collections
  has_many :bids, dependent: :destroy
  has_one_attached :photo

<<<<<<< HEAD
  validates :medium, inclusion: { in: ["painting", "photography", "sculpture", "prints", "mixed media"] }

=======
>>>>>>> master
  include PgSearch::Model
  pg_search_scope :global_search,
  against: [ :title, :medium ],
  associated_against: {
    user: [ :first_name, :last_name ]
  },
  using: {
    tsearch: { prefix: true }
  }

  def average_size
    (height.to_i + width.to_i) / 2
  end
end
