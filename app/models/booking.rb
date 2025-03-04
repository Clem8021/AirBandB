class Booking < ApplicationRecord
  belongs_to :experience
  belongs_to :user

  validates :date_start, presence: true
  validates :date_end, presence: true
  # validates :final_price, numericality: { greater_than: 0 }
  # validates :status, presence: true
end
