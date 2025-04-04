class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :movie_id, presence: true
  validates :list_id, presence: true
  validates :comment, length: { minimum: 6 }
  validates :movie_id, presence: true, uniqueness: { scope: :list_id, message: "la película ya está incluida"}
end
