class Review < ApplicationRecord
  belongs_to :space
  validates :content, length: { minimum: 20 }
end
