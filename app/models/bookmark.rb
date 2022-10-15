class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, presence: true
  validates :comment, length: { minimum: 6,
    too_short: "comment too short!" }
  validates :movie_id, uniqueness: { scope: :list_id,
    message: "bookmark already exist!" }
end
