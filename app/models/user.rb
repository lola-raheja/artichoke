class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :artworks

  include PgSearch::Model
  multisearchable against: [:first_name, :last_name, :nationality, :location]
end
