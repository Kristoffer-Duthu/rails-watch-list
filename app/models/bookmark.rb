class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list, dependent: :destroy
  validates :list, presence: true, uniqueness: { scope: :movie }
  validates :movie, presence: true, uniqueness: { scope: :list }
  validates :comment, length: { minimum: 6 }
end
