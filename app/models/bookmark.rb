class Bookmark < ApplicationRecord
  validates :comment, length: {minimum: 6}
  belongs_to :movie, required: true
  belongs_to :list, required: true
  validates :movie, uniqueness: {scope: :list}
end
