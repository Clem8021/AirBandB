class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings, dependent: :destroy
  has_many :experiences, dependent: :destroy
  has_many :reviews, dependent: :destroy

         # Validation
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true, uniqueness: true
end
