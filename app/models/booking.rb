class Booking < ApplicationRecord
  belongs_to :experience
  belongs_to :user

  validates :date_start, presence: true
  validates :date_end, presence: true
  validates :final_price, presence: true
  validates :status, presence: true
end
