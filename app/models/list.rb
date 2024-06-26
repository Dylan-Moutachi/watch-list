class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks

  validates :name, presence: true, uniqueness: true

  CATEGORIES = ["Love", "Superhero", "Thriller", "Comedy", "Tragedy", "Action", "Science-fiction"]
end
