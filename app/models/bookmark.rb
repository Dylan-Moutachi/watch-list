class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: { minimum: 6 }, presence: true
  validates_uniqueness_of :movie_id, scope: :list_id
end
