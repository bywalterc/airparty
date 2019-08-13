class Space < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, :address, :price, :category, :capacity, :user, presence: true

  mount_uploader :photo, PhotoUploader

  include PgSearch::Model

  pg_search_scope :search_by_space,
    against: [:name, :address, :description, :category],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
