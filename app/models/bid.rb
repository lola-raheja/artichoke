class Bid < ApplicationRecord
  belongs_to :user
  belongs_to :artwork

  validates :amount, presence: true
  validates :amount, numericality: { greater_than: 0 }
end
