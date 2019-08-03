class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :space
  validates :user, :space, :date_start, :date_end, presence: true
end
