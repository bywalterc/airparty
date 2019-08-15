class Space < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :user
  has_many :bookings
  has_many :reviews, dependent: :destroy

  validates :name, :address, :price, :category, :capacity, :user, presence: true

  mount_uploader :photo, PhotoUploader

  include PgSearch::Model

  pg_search_scope :search_by_space,
    against: [:name, :address, :description, :category],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
