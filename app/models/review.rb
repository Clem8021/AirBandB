class Review < ApplicationRecord
  belongs_to :experience
  belongs_to :user

  validates :rating, presence: true
  validates :comment, presence: true
  validates :date, presence: true
end
