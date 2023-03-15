class Medium < ApplicationRecord
  has_many :artworks

  validates :medium, inclusion: { in: ["painting", "photography", "multi-media", "sculpture", "print", "design", "drawing"] }
end
