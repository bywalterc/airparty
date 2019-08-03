class Space < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, :address, :price, :type, :capacity, presence: true
end
