class Experience < ApplicationRecord
  belongs_to :user

  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings

  validates :name, presence: true
  validates :stage_name, presence: true
  validates :musical_genre, presence: true
  validates :absurd_requirement, presence: true
  validates :price_per_day, presence: true
end
