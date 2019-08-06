class Space < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, :address, :price, :category, :capacity, :user, presence: true
  mount_uploader :photo, PhotoUploader
end
