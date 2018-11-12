class Service < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, presence: true
  validates :price, presence: true
  validates :price, length: { is: 3 }
end
